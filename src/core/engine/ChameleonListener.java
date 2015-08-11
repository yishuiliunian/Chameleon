// Generated from Chameleon.g4 by ANTLR 4.5
import org.antlr.v4.runtime.misc.NotNull;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link ChameleonParser}.
 */
public interface ChameleonListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link ChameleonParser#prog}.
	 * @param ctx the parse tree
	 */
	void enterProg(ChameleonParser.ProgContext ctx);
	/**
	 * Exit a parse tree produced by {@link ChameleonParser#prog}.
	 * @param ctx the parse tree
	 */
	void exitProg(ChameleonParser.ProgContext ctx);
	/**
	 * Enter a parse tree produced by {@link ChameleonParser#model}.
	 * @param ctx the parse tree
	 */
	void enterModel(ChameleonParser.ModelContext ctx);
	/**
	 * Exit a parse tree produced by {@link ChameleonParser#model}.
	 * @param ctx the parse tree
	 */
	void exitModel(ChameleonParser.ModelContext ctx);
	/**
	 * Enter a parse tree produced by {@link ChameleonParser#property_line}.
	 * @param ctx the parse tree
	 */
	void enterProperty_line(ChameleonParser.Property_lineContext ctx);
	/**
	 * Exit a parse tree produced by {@link ChameleonParser#property_line}.
	 * @param ctx the parse tree
	 */
	void exitProperty_line(ChameleonParser.Property_lineContext ctx);
	/**
	 * Enter a parse tree produced by {@link ChameleonParser#words}.
	 * @param ctx the parse tree
	 */
	void enterWords(ChameleonParser.WordsContext ctx);
	/**
	 * Exit a parse tree produced by {@link ChameleonParser#words}.
	 * @param ctx the parse tree
	 */
	void exitWords(ChameleonParser.WordsContext ctx);
	/**
	 * Enter a parse tree produced by {@link ChameleonParser#property_line_words}.
	 * @param ctx the parse tree
	 */
	void enterProperty_line_words(ChameleonParser.Property_line_wordsContext ctx);
	/**
	 * Exit a parse tree produced by {@link ChameleonParser#property_line_words}.
	 * @param ctx the parse tree
	 */
	void exitProperty_line_words(ChameleonParser.Property_line_wordsContext ctx);
	/**
	 * Enter a parse tree produced by {@link ChameleonParser#array_property}.
	 * @param ctx the parse tree
	 */
	void enterArray_property(ChameleonParser.Array_propertyContext ctx);
	/**
	 * Exit a parse tree produced by {@link ChameleonParser#array_property}.
	 * @param ctx the parse tree
	 */
	void exitArray_property(ChameleonParser.Array_propertyContext ctx);
	/**
	 * Enter a parse tree produced by {@link ChameleonParser#c_property}.
	 * @param ctx the parse tree
	 */
	void enterC_property(ChameleonParser.C_propertyContext ctx);
	/**
	 * Exit a parse tree produced by {@link ChameleonParser#c_property}.
	 * @param ctx the parse tree
	 */
	void exitC_property(ChameleonParser.C_propertyContext ctx);
	/**
	 * Enter a parse tree produced by {@link ChameleonParser#p_type}.
	 * @param ctx the parse tree
	 */
	void enterP_type(ChameleonParser.P_typeContext ctx);
	/**
	 * Exit a parse tree produced by {@link ChameleonParser#p_type}.
	 * @param ctx the parse tree
	 */
	void exitP_type(ChameleonParser.P_typeContext ctx);
}