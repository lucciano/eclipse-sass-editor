/*
* generated by Xtext
*/
grammar InternalSass;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package com.dubture.editor.sass.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package com.dubture.editor.sass.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import com.dubture.editor.sass.services.SassGrammarAccess;

}

@parser::members {

 	private SassGrammarAccess grammarAccess;
 	
    public InternalSassParser(TokenStream input, SassGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Sass";	
   	}
   	
   	@Override
   	protected SassGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleSass
entryRuleSass returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSassRule()); }
	 iv_ruleSass=ruleSass 
	 { $current=$iv_ruleSass.current; } 
	 EOF 
;

// Rule Sass
ruleSass returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getSassAccess().getSassAction_0(),
            $current);
    }
)(
    { 
        newCompositeNode(grammarAccess.getSassAccess().getCharsetParserRuleCall_1()); 
    }
ruleCharset
    { 
        afterParserOrEnumRuleCall();
    }
)?(
    { 
        newCompositeNode(grammarAccess.getSassAccess().getVariableDeclarationParserRuleCall_2()); 
    }
ruleVariableDeclaration
    { 
        afterParserOrEnumRuleCall();
    }
)*(
(
		{ 
	        newCompositeNode(grammarAccess.getSassAccess().getStatementsRuleParserRuleCall_3_0()); 
	    }
		lv_statements_3_0=ruleRule		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSassRule());
	        }
       		add(
       			$current, 
       			"statements",
        		lv_statements_3_0, 
        		"Rule");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;





// Entry rule entryRuleVariableDeclaration
entryRuleVariableDeclaration returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getVariableDeclarationRule()); } 
	 iv_ruleVariableDeclaration=ruleVariableDeclaration 
	 { $current=$iv_ruleVariableDeclaration.current.getText(); }  
	 EOF 
;

// Rule VariableDeclaration
ruleVariableDeclaration returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_VARIABLE_0=RULE_VARIABLE    {
		$current.merge(this_VARIABLE_0);
    }

    { 
    newLeafNode(this_VARIABLE_0, grammarAccess.getVariableDeclarationAccess().getVARIABLETerminalRuleCall_0()); 
    }
    this_COLON_1=RULE_COLON    {
		$current.merge(this_COLON_1);
    }

    { 
    newLeafNode(this_COLON_1, grammarAccess.getVariableDeclarationAccess().getCOLONTerminalRuleCall_1()); 
    }
    this_WORD_2=RULE_WORD    {
		$current.merge(this_WORD_2);
    }

    { 
    newLeafNode(this_WORD_2, grammarAccess.getVariableDeclarationAccess().getWORDTerminalRuleCall_2()); 
    }
    this_SEMI_COLON_3=RULE_SEMI_COLON    {
		$current.merge(this_SEMI_COLON_3);
    }

    { 
    newLeafNode(this_SEMI_COLON_3, grammarAccess.getVariableDeclarationAccess().getSEMI_COLONTerminalRuleCall_3()); 
    }
)
    ;





// Entry rule entryRuleRule
entryRuleRule returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getRuleRule()); } 
	 iv_ruleRule=ruleRule 
	 { $current=$iv_ruleRule.current.getText(); }  
	 EOF 
;

// Rule Rule
ruleRule returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    { 
        newCompositeNode(grammarAccess.getRuleAccess().getRuleHeadParserRuleCall_0_0()); 
    }
    this_RuleHead_0=ruleRuleHead    {
		$current.merge(this_RuleHead_0);
    }

    { 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getRuleAccess().getMixinParserRuleCall_0_1()); 
    }
    this_Mixin_1=ruleMixin    {
		$current.merge(this_Mixin_1);
    }

    { 
        afterParserOrEnumRuleCall();
    }
)    this_BRACE_LEFT_2=RULE_BRACE_LEFT    {
		$current.merge(this_BRACE_LEFT_2);
    }

    { 
    newLeafNode(this_BRACE_LEFT_2, grammarAccess.getRuleAccess().getBRACE_LEFTTerminalRuleCall_1()); 
    }

    { 
        newCompositeNode(grammarAccess.getRuleAccess().getRuleBodyParserRuleCall_2()); 
    }
    this_RuleBody_3=ruleRuleBody    {
		$current.merge(this_RuleBody_3);
    }

    { 
        afterParserOrEnumRuleCall();
    }
    this_BRACE_RIGHT_4=RULE_BRACE_RIGHT    {
		$current.merge(this_BRACE_RIGHT_4);
    }

    { 
    newLeafNode(this_BRACE_RIGHT_4, grammarAccess.getRuleAccess().getBRACE_RIGHTTerminalRuleCall_3()); 
    }
)
    ;





// Entry rule entryRuleRuleHead
entryRuleRuleHead returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getRuleHeadRule()); } 
	 iv_ruleRuleHead=ruleRuleHead 
	 { $current=$iv_ruleRuleHead.current.getText(); }  
	 EOF 
;

// Rule RuleHead
ruleRuleHead returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_SELECTOR_0=RULE_SELECTOR    {
		$current.merge(this_SELECTOR_0);
    }

    { 
    newLeafNode(this_SELECTOR_0, grammarAccess.getRuleHeadAccess().getSELECTORTerminalRuleCall_0()); 
    }
(    this_COMMA_1=RULE_COMMA    {
		$current.merge(this_COMMA_1);
    }

    { 
    newLeafNode(this_COMMA_1, grammarAccess.getRuleHeadAccess().getCOMMATerminalRuleCall_1_0()); 
    }
    this_SELECTOR_2=RULE_SELECTOR    {
		$current.merge(this_SELECTOR_2);
    }

    { 
    newLeafNode(this_SELECTOR_2, grammarAccess.getRuleHeadAccess().getSELECTORTerminalRuleCall_1_1()); 
    }
)*)
    ;





// Entry rule entryRuleRuleBody
entryRuleRuleBody returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getRuleBodyRule()); } 
	 iv_ruleRuleBody=ruleRuleBody 
	 { $current=$iv_ruleRuleBody.current.getText(); }  
	 EOF 
;

// Rule RuleBody
ruleRuleBody returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getRuleBodyAccess().getPropertyDeclarationParserRuleCall_0()); 
    }
    this_PropertyDeclaration_0=rulePropertyDeclaration    {
		$current.merge(this_PropertyDeclaration_0);
    }

    { 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getRuleBodyAccess().getIncludeParserRuleCall_1()); 
    }
    this_Include_1=ruleInclude    {
		$current.merge(this_Include_1);
    }

    { 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getRuleBodyAccess().getRuleParserRuleCall_2()); 
    }
    this_Rule_2=ruleRule    {
		$current.merge(this_Rule_2);
    }

    { 
        afterParserOrEnumRuleCall();
    }
)*
    ;





// Entry rule entryRulePropertyDeclaration
entryRulePropertyDeclaration returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getPropertyDeclarationRule()); } 
	 iv_rulePropertyDeclaration=rulePropertyDeclaration 
	 { $current=$iv_rulePropertyDeclaration.current.getText(); }  
	 EOF 
;

// Rule PropertyDeclaration
rulePropertyDeclaration returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_WORD_0=RULE_WORD    {
		$current.merge(this_WORD_0);
    }

    { 
    newLeafNode(this_WORD_0, grammarAccess.getPropertyDeclarationAccess().getWORDTerminalRuleCall_0()); 
    }
    this_COLON_1=RULE_COLON    {
		$current.merge(this_COLON_1);
    }

    { 
    newLeafNode(this_COLON_1, grammarAccess.getPropertyDeclarationAccess().getCOLONTerminalRuleCall_1()); 
    }
(((    this_WORD_2=RULE_WORD    {
		$current.merge(this_WORD_2);
    }

    { 
    newLeafNode(this_WORD_2, grammarAccess.getPropertyDeclarationAccess().getWORDTerminalRuleCall_2_0_0_0()); 
    }

    |    this_VARIABLE_3=RULE_VARIABLE    {
		$current.merge(this_VARIABLE_3);
    }

    { 
    newLeafNode(this_VARIABLE_3, grammarAccess.getPropertyDeclarationAccess().getVARIABLETerminalRuleCall_2_0_0_1()); 
    }

    |    this_HEX_COLOR_4=RULE_HEX_COLOR    {
		$current.merge(this_HEX_COLOR_4);
    }

    { 
    newLeafNode(this_HEX_COLOR_4, grammarAccess.getPropertyDeclarationAccess().getHEX_COLORTerminalRuleCall_2_0_0_2()); 
    }
)+    this_SEMI_COLON_5=RULE_SEMI_COLON    {
		$current.merge(this_SEMI_COLON_5);
    }

    { 
    newLeafNode(this_SEMI_COLON_5, grammarAccess.getPropertyDeclarationAccess().getSEMI_COLONTerminalRuleCall_2_0_1()); 
    }
)
    |(    this_BRACE_LEFT_6=RULE_BRACE_LEFT    {
		$current.merge(this_BRACE_LEFT_6);
    }

    { 
    newLeafNode(this_BRACE_LEFT_6, grammarAccess.getPropertyDeclarationAccess().getBRACE_LEFTTerminalRuleCall_2_1_0()); 
    }
(
    { 
        newCompositeNode(grammarAccess.getPropertyDeclarationAccess().getPropertyDeclarationParserRuleCall_2_1_1()); 
    }
    this_PropertyDeclaration_7=rulePropertyDeclaration    {
		$current.merge(this_PropertyDeclaration_7);
    }

    { 
        afterParserOrEnumRuleCall();
    }
)*    this_BRACE_RIGHT_8=RULE_BRACE_RIGHT    {
		$current.merge(this_BRACE_RIGHT_8);
    }

    { 
    newLeafNode(this_BRACE_RIGHT_8, grammarAccess.getPropertyDeclarationAccess().getBRACE_RIGHTTerminalRuleCall_2_1_2()); 
    }
)))
    ;





// Entry rule entryRuleCharset
entryRuleCharset returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getCharsetRule()); } 
	 iv_ruleCharset=ruleCharset 
	 { $current=$iv_ruleCharset.current.getText(); }  
	 EOF 
;

// Rule Charset
ruleCharset returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_CHARSET_ID_0=RULE_CHARSET_ID    {
		$current.merge(this_CHARSET_ID_0);
    }

    { 
    newLeafNode(this_CHARSET_ID_0, grammarAccess.getCharsetAccess().getCHARSET_IDTerminalRuleCall_0()); 
    }
    this_STRING_1=RULE_STRING    {
		$current.merge(this_STRING_1);
    }

    { 
    newLeafNode(this_STRING_1, grammarAccess.getCharsetAccess().getSTRINGTerminalRuleCall_1()); 
    }
    this_SEMI_COLON_2=RULE_SEMI_COLON    {
		$current.merge(this_SEMI_COLON_2);
    }

    { 
    newLeafNode(this_SEMI_COLON_2, grammarAccess.getCharsetAccess().getSEMI_COLONTerminalRuleCall_2()); 
    }
)
    ;





// Entry rule entryRuleInclude
entryRuleInclude returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getIncludeRule()); } 
	 iv_ruleInclude=ruleInclude 
	 { $current=$iv_ruleInclude.current.getText(); }  
	 EOF 
;

// Rule Include
ruleInclude returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_INCLUDE_ID_0=RULE_INCLUDE_ID    {
		$current.merge(this_INCLUDE_ID_0);
    }

    { 
    newLeafNode(this_INCLUDE_ID_0, grammarAccess.getIncludeAccess().getINCLUDE_IDTerminalRuleCall_0()); 
    }
    this_WORD_1=RULE_WORD    {
		$current.merge(this_WORD_1);
    }

    { 
    newLeafNode(this_WORD_1, grammarAccess.getIncludeAccess().getWORDTerminalRuleCall_1()); 
    }
    this_SEMI_COLON_2=RULE_SEMI_COLON    {
		$current.merge(this_SEMI_COLON_2);
    }

    { 
    newLeafNode(this_SEMI_COLON_2, grammarAccess.getIncludeAccess().getSEMI_COLONTerminalRuleCall_2()); 
    }
)
    ;





// Entry rule entryRuleMixin
entryRuleMixin returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getMixinRule()); } 
	 iv_ruleMixin=ruleMixin 
	 { $current=$iv_ruleMixin.current.getText(); }  
	 EOF 
;

// Rule Mixin
ruleMixin returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_MIXIN_ID_0=RULE_MIXIN_ID    {
		$current.merge(this_MIXIN_ID_0);
    }

    { 
    newLeafNode(this_MIXIN_ID_0, grammarAccess.getMixinAccess().getMIXIN_IDTerminalRuleCall_0()); 
    }
    this_WORD_1=RULE_WORD    {
		$current.merge(this_WORD_1);
    }

    { 
    newLeafNode(this_WORD_1, grammarAccess.getMixinAccess().getWORDTerminalRuleCall_1()); 
    }
(    this_PAREN_LEFT_2=RULE_PAREN_LEFT    {
		$current.merge(this_PAREN_LEFT_2);
    }

    { 
    newLeafNode(this_PAREN_LEFT_2, grammarAccess.getMixinAccess().getPAREN_LEFTTerminalRuleCall_2_0()); 
    }
    this_VARIABLE_3=RULE_VARIABLE    {
		$current.merge(this_VARIABLE_3);
    }

    { 
    newLeafNode(this_VARIABLE_3, grammarAccess.getMixinAccess().getVARIABLETerminalRuleCall_2_1()); 
    }
    this_PAREN_RIGHT_4=RULE_PAREN_RIGHT    {
		$current.merge(this_PAREN_RIGHT_4);
    }

    { 
    newLeafNode(this_PAREN_RIGHT_4, grammarAccess.getMixinAccess().getPAREN_RIGHTTerminalRuleCall_2_2()); 
    }
)?)
    ;





RULE_DOT : '.';

RULE_COMMA : ',';

RULE_HASH : '#';

RULE_COLON : ':';

RULE_SEMI_COLON : ';';

RULE_PAREN_LEFT : '(';

RULE_PAREN_RIGHT : ')';

RULE_BRACE_LEFT : '{';

RULE_BRACE_RIGHT : '}';

RULE_DOLLAR : '$';

RULE_AMP : '&';

RULE_CHARSET_ID : '@charset ';

RULE_INCLUDE_ID : '@include ';

RULE_MIXIN_ID : '@mixin ';

RULE_WORD : ('a'..'z'|'A'..'Z'|'0'..'9'|'-'|'%')+;

RULE_VARIABLE : RULE_DOLLAR RULE_WORD;

RULE_HEX_COLOR : RULE_HASH RULE_WORD;

RULE_SELECTOR : (RULE_AMP RULE_COLON RULE_WORD|((RULE_HASH|RULE_DOT)? RULE_WORD)+);

RULE_INT : 'INT has been deactivated';

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


