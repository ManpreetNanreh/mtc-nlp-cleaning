<?xml version = '1.0' encoding = 'ISO-8859-1' ?>
<asm version="1.0" name="0">
	<cp>
		<constant value="ToDatabase"/>
		<constant value="links"/>
		<constant value="NTransientLinkSet;"/>
		<constant value="col"/>
		<constant value="J"/>
		<constant value="main"/>
		<constant value="A"/>
		<constant value="OclParametrizedType"/>
		<constant value="#native"/>
		<constant value="Collection"/>
		<constant value="J.setName(S):V"/>
		<constant value="OclSimpleType"/>
		<constant value="OclAny"/>
		<constant value="J.setElementType(J):V"/>
		<constant value="TransientLinkSet"/>
		<constant value="A.__matcher__():V"/>
		<constant value="A.__exec__():V"/>
		<constant value="self"/>
		<constant value="__resolve__"/>
		<constant value="1"/>
		<constant value="J.oclIsKindOf(J):B"/>
		<constant value="18"/>
		<constant value="NTransientLinkSet;.getLinkBySourceElement(S):QNTransientLink;"/>
		<constant value="J.oclIsUndefined():B"/>
		<constant value="15"/>
		<constant value="NTransientLink;.getTargetFromSource(J):J"/>
		<constant value="17"/>
		<constant value="30"/>
		<constant value="Sequence"/>
		<constant value="2"/>
		<constant value="A.__resolve__(J):J"/>
		<constant value="QJ.including(J):QJ"/>
		<constant value="QJ.flatten():QJ"/>
		<constant value="e"/>
		<constant value="value"/>
		<constant value="resolveTemp"/>
		<constant value="S"/>
		<constant value="NTransientLink;.getNamedTargetFromSource(JS):J"/>
		<constant value="name"/>
		<constant value="__matcher__"/>
		<constant value="A.__matchToDatabase():V"/>
		<constant value="__exec__"/>
		<constant value="NTransientLinkSet;.getLinksByRule(S):QNTransientLink;"/>
		<constant value="A.__applyToDatabase(NTransientLink;):V"/>
		<constant value="__matchToDatabase"/>
		<constant value="DataClass"/>
		<constant value="MM"/>
		<constant value="IN"/>
		<constant value="MMOF!Classifier;.allInstancesFrom(S):QJ"/>
		<constant value="TransientLink"/>
		<constant value="NTransientLink;.setRule(MATL!Rule;):V"/>
		<constant value="Data"/>
		<constant value="NTransientLink;.addSourceElement(SJ):V"/>
		<constant value="cols"/>
		<constant value="NTransientLink;.addVariable(SJ):V"/>
		<constant value="DB"/>
		<constant value="Table"/>
		<constant value="MM1"/>
		<constant value="NTransientLink;.addTargetElement(SJ):V"/>
		<constant value="NTransientLinkSet;.addLink2(NTransientLink;B):V"/>
		<constant value="13:34-13:44"/>
		<constant value="16:3-23:4"/>
		<constant value="__applyToDatabase"/>
		<constant value="NTransientLink;"/>
		<constant value="NTransientLink;.getSourceElement(S):J"/>
		<constant value="NTransientLink;.getTargetElement(S):J"/>
		<constant value="3"/>
		<constant value="NTransientLink;.getVariable(S):J"/>
		<constant value="4"/>
		<constant value="ETLTable"/>
		<constant value="id"/>
		<constant value="J.toString():J"/>
		<constant value="J.createColumn(JJ):J"/>
		<constant value="CJ.including(J):CJ"/>
		<constant value="data"/>
		<constant value="tokens"/>
		<constant value="stopWordsRemovedTokens"/>
		<constant value="stopWordTokens"/>
		<constant value="columns"/>
		<constant value="17:12-17:22"/>
		<constant value="17:4-17:22"/>
		<constant value="18:24-18:34"/>
		<constant value="18:48-18:52"/>
		<constant value="18:54-18:58"/>
		<constant value="18:54-18:61"/>
		<constant value="18:54-18:72"/>
		<constant value="18:24-18:73"/>
		<constant value="19:9-19:19"/>
		<constant value="19:33-19:39"/>
		<constant value="19:41-19:45"/>
		<constant value="19:41-19:50"/>
		<constant value="19:9-19:51"/>
		<constant value="20:9-20:19"/>
		<constant value="20:33-20:41"/>
		<constant value="20:43-20:47"/>
		<constant value="20:43-20:54"/>
		<constant value="20:43-20:65"/>
		<constant value="20:9-20:66"/>
		<constant value="21:9-21:19"/>
		<constant value="21:33-21:57"/>
		<constant value="21:59-21:63"/>
		<constant value="21:59-21:78"/>
		<constant value="21:59-21:89"/>
		<constant value="21:9-21:90"/>
		<constant value="18:15-22:5"/>
		<constant value="18:4-22:5"/>
		<constant value="link"/>
		<constant value="createColumn"/>
		<constant value="colName"/>
		<constant value="colValue"/>
		<constant value="column"/>
		<constant value="Column"/>
		<constant value="32:12-32:19"/>
		<constant value="32:4-32:19"/>
		<constant value="33:13-33:21"/>
		<constant value="33:4-33:21"/>
		<constant value="31:3-34:4"/>
	</cp>
	<field name="1" type="2"/>
	<field name="3" type="4"/>
	<operation name="5">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<getasm/>
			<push arg="7"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<push arg="9"/>
			<pcall arg="10"/>
			<dup/>
			<push arg="11"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<push arg="12"/>
			<pcall arg="10"/>
			<pcall arg="13"/>
			<set arg="3"/>
			<getasm/>
			<push arg="14"/>
			<push arg="8"/>
			<new/>
			<set arg="1"/>
			<getasm/>
			<pcall arg="15"/>
			<getasm/>
			<pcall arg="16"/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="0" name="17" begin="0" end="24"/>
		</localvariabletable>
	</operation>
	<operation name="18">
		<context type="6"/>
		<parameters>
			<parameter name="19" type="4"/>
		</parameters>
		<code>
			<load arg="19"/>
			<getasm/>
			<get arg="3"/>
			<call arg="20"/>
			<if arg="21"/>
			<getasm/>
			<get arg="1"/>
			<load arg="19"/>
			<call arg="22"/>
			<dup/>
			<call arg="23"/>
			<if arg="24"/>
			<load arg="19"/>
			<call arg="25"/>
			<goto arg="26"/>
			<pop/>
			<load arg="19"/>
			<goto arg="27"/>
			<push arg="28"/>
			<push arg="8"/>
			<new/>
			<load arg="19"/>
			<iterate/>
			<store arg="29"/>
			<getasm/>
			<load arg="29"/>
			<call arg="30"/>
			<call arg="31"/>
			<enditerate/>
			<call arg="32"/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="2" name="33" begin="23" end="27"/>
			<lve slot="0" name="17" begin="0" end="29"/>
			<lve slot="1" name="34" begin="0" end="29"/>
		</localvariabletable>
	</operation>
	<operation name="35">
		<context type="6"/>
		<parameters>
			<parameter name="19" type="4"/>
			<parameter name="29" type="36"/>
		</parameters>
		<code>
			<getasm/>
			<get arg="1"/>
			<load arg="19"/>
			<call arg="22"/>
			<load arg="19"/>
			<load arg="29"/>
			<call arg="37"/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="0" name="17" begin="0" end="6"/>
			<lve slot="1" name="34" begin="0" end="6"/>
			<lve slot="2" name="38" begin="0" end="6"/>
		</localvariabletable>
	</operation>
	<operation name="39">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<getasm/>
			<pcall arg="40"/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="0" name="17" begin="0" end="1"/>
		</localvariabletable>
	</operation>
	<operation name="41">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<getasm/>
			<get arg="1"/>
			<push arg="0"/>
			<call arg="42"/>
			<iterate/>
			<store arg="19"/>
			<getasm/>
			<load arg="19"/>
			<pcall arg="43"/>
			<enditerate/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="1" name="33" begin="5" end="8"/>
			<lve slot="0" name="17" begin="0" end="9"/>
		</localvariabletable>
	</operation>
	<operation name="44">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<push arg="45"/>
			<push arg="46"/>
			<findme/>
			<push arg="47"/>
			<call arg="48"/>
			<iterate/>
			<store arg="19"/>
			<getasm/>
			<get arg="1"/>
			<push arg="49"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<push arg="0"/>
			<pcall arg="50"/>
			<dup/>
			<push arg="51"/>
			<load arg="19"/>
			<pcall arg="52"/>
			<dup/>
			<push arg="53"/>
			<push arg="28"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<store arg="29"/>
			<pcall arg="54"/>
			<dup/>
			<push arg="55"/>
			<push arg="56"/>
			<push arg="57"/>
			<new/>
			<pcall arg="58"/>
			<pusht/>
			<pcall arg="59"/>
			<enditerate/>
		</code>
		<linenumbertable>
			<lne id="60" begin="21" end="23"/>
			<lne id="61" begin="27" end="32"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="2" name="53" begin="25" end="32"/>
			<lve slot="1" name="51" begin="6" end="34"/>
			<lve slot="0" name="17" begin="0" end="35"/>
		</localvariabletable>
	</operation>
	<operation name="62">
		<context type="6"/>
		<parameters>
			<parameter name="19" type="63"/>
		</parameters>
		<code>
			<load arg="19"/>
			<push arg="51"/>
			<call arg="64"/>
			<store arg="29"/>
			<load arg="19"/>
			<push arg="55"/>
			<call arg="65"/>
			<store arg="66"/>
			<load arg="19"/>
			<push arg="53"/>
			<call arg="67"/>
			<store arg="68"/>
			<load arg="66"/>
			<dup/>
			<getasm/>
			<push arg="69"/>
			<call arg="30"/>
			<set arg="38"/>
			<dup/>
			<getasm/>
			<push arg="28"/>
			<push arg="8"/>
			<new/>
			<getasm/>
			<push arg="70"/>
			<load arg="29"/>
			<get arg="70"/>
			<call arg="71"/>
			<call arg="72"/>
			<call arg="73"/>
			<getasm/>
			<push arg="74"/>
			<load arg="29"/>
			<get arg="74"/>
			<call arg="72"/>
			<call arg="73"/>
			<getasm/>
			<push arg="75"/>
			<load arg="29"/>
			<get arg="75"/>
			<call arg="71"/>
			<call arg="72"/>
			<call arg="73"/>
			<getasm/>
			<push arg="76"/>
			<load arg="29"/>
			<get arg="77"/>
			<call arg="71"/>
			<call arg="72"/>
			<call arg="73"/>
			<call arg="30"/>
			<set arg="78"/>
			<pop/>
		</code>
		<linenumbertable>
			<lne id="79" begin="15" end="15"/>
			<lne id="80" begin="13" end="17"/>
			<lne id="81" begin="23" end="23"/>
			<lne id="82" begin="24" end="24"/>
			<lne id="83" begin="25" end="25"/>
			<lne id="84" begin="25" end="26"/>
			<lne id="85" begin="25" end="27"/>
			<lne id="86" begin="23" end="28"/>
			<lne id="87" begin="30" end="30"/>
			<lne id="88" begin="31" end="31"/>
			<lne id="89" begin="32" end="32"/>
			<lne id="90" begin="32" end="33"/>
			<lne id="91" begin="30" end="34"/>
			<lne id="92" begin="36" end="36"/>
			<lne id="93" begin="37" end="37"/>
			<lne id="94" begin="38" end="38"/>
			<lne id="95" begin="38" end="39"/>
			<lne id="96" begin="38" end="40"/>
			<lne id="97" begin="36" end="41"/>
			<lne id="98" begin="43" end="43"/>
			<lne id="99" begin="44" end="44"/>
			<lne id="100" begin="45" end="45"/>
			<lne id="101" begin="45" end="46"/>
			<lne id="102" begin="45" end="47"/>
			<lne id="103" begin="43" end="48"/>
			<lne id="104" begin="20" end="49"/>
			<lne id="105" begin="18" end="51"/>
			<lne id="61" begin="12" end="52"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="4" name="53" begin="11" end="52"/>
			<lve slot="3" name="55" begin="7" end="52"/>
			<lve slot="2" name="51" begin="3" end="52"/>
			<lve slot="0" name="17" begin="0" end="52"/>
			<lve slot="1" name="106" begin="0" end="52"/>
		</localvariabletable>
	</operation>
	<operation name="107">
		<context type="6"/>
		<parameters>
			<parameter name="19" type="36"/>
			<parameter name="29" type="36"/>
		</parameters>
		<code>
			<getasm/>
			<get arg="1"/>
			<push arg="49"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<push arg="107"/>
			<pcall arg="50"/>
			<dup/>
			<push arg="108"/>
			<load arg="19"/>
			<pcall arg="52"/>
			<dup/>
			<push arg="109"/>
			<load arg="29"/>
			<pcall arg="52"/>
			<dup/>
			<push arg="110"/>
			<push arg="111"/>
			<push arg="57"/>
			<new/>
			<dup/>
			<store arg="66"/>
			<pcall arg="58"/>
			<pushf/>
			<pcall arg="59"/>
			<load arg="66"/>
			<dup/>
			<getasm/>
			<load arg="19"/>
			<call arg="30"/>
			<set arg="38"/>
			<dup/>
			<getasm/>
			<load arg="29"/>
			<call arg="30"/>
			<set arg="34"/>
			<pop/>
			<load arg="66"/>
		</code>
		<linenumbertable>
			<lne id="112" begin="29" end="29"/>
			<lne id="113" begin="27" end="31"/>
			<lne id="114" begin="34" end="34"/>
			<lne id="115" begin="32" end="36"/>
			<lne id="116" begin="26" end="37"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="3" name="110" begin="22" end="38"/>
			<lve slot="0" name="17" begin="0" end="38"/>
			<lve slot="1" name="108" begin="0" end="38"/>
			<lve slot="2" name="109" begin="0" end="38"/>
		</localvariabletable>
	</operation>
</asm>
