.class final Lcom/miui/video/framework/utils/OrderUtil$1;
.super Ljava/lang/Object;
.source "OrderUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/framework/utils/OrderUtil;->orderItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/video/framework/utils/OrderUtil$NameComparable;Lcom/miui/video/framework/utils/OrderUtil$NameComparable;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {v2}, Lcom/miui/video/framework/utils/OrderUtil;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/miui/video/framework/utils/OrderUtil;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v7}, Lcom/miui/video/framework/utils/OrderUtil;->access$200(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v11

    invoke-static {v3, v10}, Lcom/miui/video/framework/utils/OrderUtil;->access$200(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v12

    if-lez v11, :cond_8

    if-ne v11, v12, :cond_8

    invoke-virtual {v2, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-nez v5, :cond_1

    invoke-static {v13}, Lcom/miui/video/framework/utils/OrderUtil;->access$300(Ljava/lang/String;)C

    move-result v5

    invoke-interface {v0, v5}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->setHeadName(C)V

    const/4 v5, 0x1

    :cond_1
    if-nez v6, :cond_2

    invoke-static {v14}, Lcom/miui/video/framework/utils/OrderUtil;->access$300(Ljava/lang/String;)C

    move-result v6

    invoke-interface {v1, v6}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->setHeadName(C)V

    const/4 v6, 0x1

    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    invoke-static {v13}, Lcom/miui/video/framework/utils/OrderUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v13}, Lcom/miui/video/framework/utils/HanziToPinyin;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v14}, Lcom/miui/video/framework/utils/OrderUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v14}, Lcom/miui/video/framework/utils/HanziToPinyin;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-nez v5, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-interface {v0, v5}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->setHeadName(C)V

    :cond_6
    if-nez v6, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-interface {v1, v0}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->setHeadName(C)V

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_8
    move-object v13, v2

    move-object v14, v3

    :goto_3
    if-nez v11, :cond_10

    if-ne v11, v12, :cond_10

    if-nez v5, :cond_9

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-interface {v0, v5}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->setHeadName(C)V

    const/4 v5, 0x1

    :cond_9
    if-nez v6, :cond_a

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-interface {v1, v6}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->setHeadName(C)V

    const/4 v6, 0x1

    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v12, v13, :cond_b

    sub-int/2addr v12, v13

    return v12

    :cond_b
    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_c

    return v9

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v12, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v13, :cond_d

    return v8

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v12, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v13, :cond_e

    const/4 v8, 0x1

    return v8

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v12, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v13, :cond_f

    return v4

    :cond_f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_10
    invoke-static {v13}, Lcom/miui/video/framework/utils/OrderUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v13}, Lcom/miui/video/framework/utils/HanziToPinyin;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_11
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v14}, Lcom/miui/video/framework/utils/OrderUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {v14}, Lcom/miui/video/framework/utils/HanziToPinyin;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_12
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-nez v5, :cond_13

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-interface {v0, v5}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->setHeadName(C)V

    :cond_13
    if-nez v6, :cond_14

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-interface {v1, v0}, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;->setHeadName(C)V

    :cond_14
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    return v8

    :cond_17
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    return v4

    :cond_1a
    :goto_6
    invoke-static {v2, v3}, Lcom/miui/video/framework/utils/OrderUtil;->access$000(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;

    check-cast p2, Lcom/miui/video/framework/utils/OrderUtil$NameComparable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/framework/utils/OrderUtil$1;->compare(Lcom/miui/video/framework/utils/OrderUtil$NameComparable;Lcom/miui/video/framework/utils/OrderUtil$NameComparable;)I

    move-result p1

    return p1
.end method
