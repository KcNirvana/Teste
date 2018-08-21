.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x28

    if-eq v1, v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    add-int/lit8 v6, p0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v3, v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v6, 0x29

    if-ne v2, v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/16 v6, 0x30

    if-lt v2, v6, :cond_0

    const/16 v6, 0x39

    if-gt v2, v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 24

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v20

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v20

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    const/16 v21, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v21

    if-lt v0, v3, :cond_1

    new-instance v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    move/from16 v0, v21

    invoke-static {v0, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int v21, v21, v3

    move/from16 v0, v21

    invoke-static {v0, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    add-int v21, v21, v3

    const-string/jumbo v3, "00"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_3

    move-object/from16 v6, v22

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "01"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_4

    move-object/from16 v5, v22

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "10"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_5

    move-object/from16 v7, v22

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "11"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_6

    move-object/from16 v8, v22

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "13"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_7

    move-object/from16 v9, v22

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "15"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_8

    move-object/from16 v10, v22

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "17"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_9

    move-object/from16 v11, v22

    goto :goto_1

    :cond_9
    const-string/jumbo v3, "3100"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string/jumbo v3, "3101"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string/jumbo v3, "3102"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string/jumbo v3, "3103"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string/jumbo v3, "3104"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string/jumbo v3, "3105"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string/jumbo v3, "3106"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string/jumbo v3, "3107"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string/jumbo v3, "3108"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string/jumbo v3, "3109"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_b

    :cond_a
    move-object/from16 v12, v22

    const-string/jumbo v13, "KG"

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v3, "3200"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string/jumbo v3, "3201"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string/jumbo v3, "3202"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string/jumbo v3, "3203"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string/jumbo v3, "3204"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string/jumbo v3, "3205"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string/jumbo v3, "3206"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string/jumbo v3, "3207"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string/jumbo v3, "3208"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string/jumbo v3, "3209"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_d

    :cond_c
    move-object/from16 v12, v22

    const-string/jumbo v13, "LB"

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v3, "3920"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_e

    const-string/jumbo v3, "3921"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_e

    const-string/jumbo v3, "3922"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_e

    const-string/jumbo v3, "3923"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_f

    :cond_e
    move-object/from16 v15, v22

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v3, "3930"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_10

    const-string/jumbo v3, "3931"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_10

    const-string/jumbo v3, "3932"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_10

    const-string/jumbo v3, "3933"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_12

    :cond_10
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v3, v0, :cond_11

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x0

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object v0

    return-object v0
.end method
