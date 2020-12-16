package mtc;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.m2m.atl.core.ATLCoreException;
import org.eclipse.m2m.atl.core.IExtractor;
import org.eclipse.m2m.atl.core.IInjector;
import org.eclipse.m2m.atl.core.IModel;
import org.eclipse.m2m.atl.core.IReferenceModel;
import org.eclipse.m2m.atl.core.ModelFactory;
import org.eclipse.m2m.atl.core.emf.EMFExtractor;
import org.eclipse.m2m.atl.core.emf.EMFInjector;
import org.eclipse.m2m.atl.core.emf.EMFModel;
import org.eclipse.m2m.atl.core.emf.EMFModelFactory;
import org.eclipse.m2m.atl.core.emf.EMFReferenceModel;
import org.eclipse.m2m.atl.core.launch.ILauncher;
import org.eclipse.m2m.atl.engine.emfvm.launch.EMFVMLauncher;


public class MTC {
	
	/**
	 * This function reads the XMI model instance file.
	 * 
	 * @param path the path to the input file
	 * @return the file read as a string
	 * @throws IOException
	 */
	private static String readXMIFile(String path) throws IOException {
		String xmiFile = null;
		
		try (BufferedReader br = new BufferedReader(new FileReader(path))) {
			StringBuilder sb = new StringBuilder();
			String line = br.readLine();
			
			while (line != null) {
				sb.append(line);
				sb.append(System.lineSeparator());
				line = br.readLine();
			}
			
			xmiFile = sb.toString();
		}
		
		return xmiFile;
	}
	
	/**
	 * This method extracts a specific attribute from the input line string.
	 * 
	 * @param line the string input to extract the attribute from
	 * @param searchString the matching string which will determine if attribute exists
	 * @param jumpIndex the number indices to jump ahead in order to read the input
	 * @return the attribute extracted as string
	 */
	private static String extractAttribute(String line, String searchString, int jumpIndex) {
		int idx = line.indexOf(searchString);
		StringBuilder sb = new StringBuilder();
		
		for (int i = idx+jumpIndex; i < line.length(); i++) {
			if (line.charAt(i) != '"') {
				sb.append(line.charAt(i));
			} else {
				break;	
			}
		}
		
		return sb.toString();
	}
	
	/**
	 * This method extracts the required features from the xmi file.
	 * 
	 * @param xmi the input xmi file as string
	 * @return the map containing the extracted features
	 */
	private static Map<String, String> extractDataModelFeatures(String xmi) {
		Map<String, String> attributes = new HashMap<String, String>();
		
		for (String line: xmi.split("<")) {
			if (line.startsWith("DM")) {
				
				/*
				 * Extract id attribute
				 */
				attributes.put("id", extractAttribute(line, "id=\"", 4));
				
				/*
				 * Extract data attribute
				 */
				attributes.put("data", extractAttribute(line, "data=\"", 6));
				
				/*
				 * Extract isCleaned attribute
				 */
				attributes.put("isCleaned", extractAttribute(line, "isCleaned=\"", 11));				
			}
		}
		
		return attributes;
	}
	
	/**
	 * This method will run the ATL transformation provided the appropriate model paths.
	 * 
	 * @param inMetaModelPath the path to input meta model
	 * @param outMetaModelPath the path to output meta model
	 * @param inModelPath the path to input model instance
	 * @param outModelPath the path to output model instance
	 * @param transformationPath the path to ATL transformation
	 * @throws ATLCoreException 
	 * @throws FileNotFoundException 
	 */
	public static void runATLTransformation(String inMetaModelPath, String outMetaModelPath, String inModelPath, String outModelPath, 
			String transformationPath, String atlInModelName, String atlOutModelName) throws ATLCoreException, FileNotFoundException {
		/*
		 * Initializations
		 */
		ILauncher transformationLauncher = new EMFVMLauncher();
		ModelFactory modelFactory = new EMFModelFactory();
		IInjector injector = new EMFInjector();
		IExtractor extractor = new EMFExtractor();
		
		/*
		 * Load the meta models
		 */
		IReferenceModel rawMetaModel = modelFactory.newReferenceModel();
		injector.inject(rawMetaModel, inMetaModelPath);
		IReferenceModel rawOutMetaModel = modelFactory.newReferenceModel();
		injector.inject(rawOutMetaModel, outMetaModelPath);
		
		/*
		 * Load model
		 */
		IModel rawModel = modelFactory.newModel(rawMetaModel);
		injector.inject(rawModel, inModelPath);
		IModel rawOutModel = modelFactory.newModel(rawOutMetaModel);
		
		/*
		 * Run the transformation
		 */
		transformationLauncher.initialize(new HashMap<String, Object>());
		transformationLauncher.addInModel(rawModel, "IN", atlInModelName);
		transformationLauncher.addOutModel(rawOutModel, "OUT", atlOutModelName);
		transformationLauncher.launch(ILauncher.RUN_MODE, new NullProgressMonitor(), new HashMap<String,Object>(),
				new FileInputStream(transformationPath));
		extractor.extract(rawOutModel, outModelPath);
		
		/*
		 * Unload all models and meta models
		 */
		EMFModelFactory emfModelFactory = (EMFModelFactory) modelFactory;
		emfModelFactory.unload((EMFModel) rawModel);
		emfModelFactory.unload((EMFModel) rawOutModel);
		emfModelFactory.unload((EMFReferenceModel) rawMetaModel);
		emfModelFactory.unload((EMFReferenceModel) rawOutMetaModel);
	}
	
	
	public static void main(String[] agrs) throws FileNotFoundException, IOException{
		
		/*
		 * CHANGE THESE VALUES TO THEIR APPROPRIATE PATH OR FILE NAME
		 */
		// Define the path for the input xmi file
		String inFileName = "xmi/UncleanedData.xmi";
		// Define the path to project and transformations
		String transformationPath = "C:\\Users\\Home\\eclipse-workspace\\nlp-atl-transformations\\";
		
		/*
		 * Get input attributes to be used in checking the conditions when running the MTC
		 */
		// Read the xmi file
		String xmi = readXMIFile(inFileName);
		// Get the attributes defined in the xmi file
		Map<String, String> attributes = extractDataModelFeatures(xmi);
		
		/*
		 * Run the conditional MTC
		 * 
		 * This part can be re-designed into any formation as required by the user defining the transformation chain
		 */
		// First check if data is cleaned
		// If data is cleaned already, then put it into the database model
		if (attributes.get("isCleaned").equals("true")) {
			// the data is clean and can be put into database format.
			System.out.println("Performing To Database Transformation");
			try {
				runATLTransformation("model/DataModel.ecore", "model/Database.ecore", inFileName, "xmi/result/Database.xmi", transformationPath+"ToDatabase.asm", "MM", "MM1");
			} catch (Exception e) {
				System.out.println("The transformation broke due to the following error:");
				System.out.println(e.getLocalizedMessage());
			}
			System.out.println("Done");
		} else {
			System.out.println("Performing data cleaning transformations:\n");
			try {
				System.out.println("\tPerforming Tokenization transformation");
				// Since data is not cleaned yet, then run it through Tokenization transformation to extracts tokens from raw data.
				runATLTransformation("model/DataModel.ecore", "model/DataModel.ecore", inFileName, "xmi/result/Tokens.xmi", transformationPath+"RawToToken.asm", "MM", "MM1");
				System.out.println("\tDone\n");
			
				System.out.println("\tPerforming Stop Word Removal Transformation");
				// Remove stop words from the tokenized data using the Stop Word removal transformation.
				runATLTransformation("model/DataModel.ecore", "model/DataModel.ecore", "xmi/result/Tokens.xmi", "xmi/result/StopWordsRemoved.xmi", transformationPath+"TokensToStopWords.asm", "MM", "MM1");
				System.out.println("\tDone\n");
			
				System.out.println("\tPerforming To Database Transformation");
				// After these two transformations, the data is clean and can be put into database format. 
				runATLTransformation("model/DataModel.ecore", "model/Database.ecore", "xmi/result/StopWordsRemoved.xmi", "xmi/result/Database.xmi", transformationPath+"ToDatabase.asm", "MM", "MM1");
				System.out.println("\tDone\n");
			} catch (Exception e) {
				System.out.println("The transformation broke due to the following error:");
				System.out.println(e.getLocalizedMessage());
			}
			System.out.println("Done");
		}
		
		

		/*
		 * This following code is supposed to run QVTo transformation but fails to load the model instance properly.
		 */
//		URI transformationURI = URI.createFileURI("C:\\Users\\Home\\eclipse-workspace\\nlp-qvt-transformations\\transforms\\TokensToStopWords.qvto");
//		TransformationExecutor executor = new TransformationExecutor(transformationURI);
//		
//		ExecutionContextImpl context = new ExecutionContextImpl();
//		ResourceSet resourceSet = new ResourceSetImpl();
//		resourceSet.getPackageRegistry().put(EcorePackage.eNS_URI, EcorePackage.eINSTANCE);
//		resourceSet.getResourceFactoryRegistry().getExtensionToFactoryMap().put("ecore", new EcoreResourceFactoryImpl());
//
//		Resource inResource = resourceSet.getResource(URI.createFileURI("model/DataModel.ecore"), true);
//		EList<EObject> inObjects = inResource.getContents();
//		
//		ModelExtent input = new BasicModelExtent(inObjects);
//		ModelExtent output = new BasicModelExtent();
//		
//		context.setConfigProperty("keepModeling", true);
//		
//		ExecutionDiagnostic result = executor.execute(context, input, output);
//		
//		System.out.println(result);
	}

}
