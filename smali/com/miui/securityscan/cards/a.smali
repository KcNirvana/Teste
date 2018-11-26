.class public final Lcom/miui/securityscan/cards/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Bm:Ljava/util/ArrayList;

.field private static final RESOURCE:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/securityscan/cards/a;->Bm:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/securitycenter/Application;->bsy()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/cards/a;->RESOURCE:Landroid/content/res/Resources;

    sget-object v0, Lcom/miui/securityscan/cards/a;->Bm:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/common/card/models/TopCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/TopCardModel;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BW()Ljava/util/ArrayList;
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/miui/common/card/models/TopCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/TopCardModel;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setCurrentRowIndex(I)V

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setHomePageFunc(Z)V

    invoke-static {}, Lcom/miui/securityscan/cards/b;->Ca()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setCurrentRowIndex(I)V

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setHomePageFunc(Z)V

    invoke-static {}, Lcom/miui/securityscan/cards/b;->Cb()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setCurrentRowIndex(I)V

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setHomePageFunc(Z)V

    invoke-static {}, Lcom/miui/securityscan/cards/b;->Cc()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string/jumbo v0, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/miui/common/card/models/FuncTopBannerNewCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/FuncTopBannerNewCardModel;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    sget-object v4, Lcom/miui/securityscan/cards/a;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f07076a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setTitle(Ljava/lang/String;)V

    sget-object v4, Lcom/miui/securityscan/cards/a;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f07076b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setSummary(Ljava/lang/String;)V

    sget-object v4, Lcom/miui/securityscan/cards/a;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f07076c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setButton(Ljava/lang/String;)V

    const-string/jumbo v4, "assets://img/icon_card_app_lock.png"

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setIcon(Ljava/lang/String;)V

    const-string/jumbo v4, "drawable://2130837600"

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setImgUrl(Ljava/lang/String;)V

    new-instance v4, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {v4, v0}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/miui/common/card/models/ListTitleCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/ListTitleCardModel;-><init>()V

    sget-object v1, Lcom/miui/securityscan/cards/a;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f070773

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ListTitleCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securityscan/cards/b;->Cd()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x3

    invoke-static {v1, v0}, Lcom/miui/securityscan/cards/DataModel;->CR(II)I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_4

    new-instance v6, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    invoke-direct {v6}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;-><init>()V

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setHomePageFunc(Z)V

    if-ne v5, v8, :cond_2

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setTopRow(Z)V

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setBottomRow(Z)V

    :cond_0
    :goto_2
    mul-int/lit8 v7, v2, 0x3

    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x3

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v4, v7, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setTopRow(Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v5, -0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setBottomRow(Z)V

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method private static BX()Ljava/util/ArrayList;
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/miui/common/card/models/TopCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/TopCardModel;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setCurrentRowIndex(I)V

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setHomePageFunc(Z)V

    invoke-static {}, Lcom/miui/securityscan/cards/b;->Ce()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setCurrentRowIndex(I)V

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setHomePageFunc(Z)V

    invoke-static {}, Lcom/miui/securityscan/cards/b;->Cf()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setCurrentRowIndex(I)V

    invoke-virtual {v0, v8}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setHomePageFunc(Z)V

    invoke-static {}, Lcom/miui/securityscan/cards/b;->Cg()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string/jumbo v0, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;end"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/miui/common/card/models/FuncTopBannerNew2CardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/FuncTopBannerNew2CardModel;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    sget-object v4, Lcom/miui/securityscan/cards/a;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f07078a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setTitle(Ljava/lang/String;)V

    sget-object v4, Lcom/miui/securityscan/cards/a;->RESOURCE:Landroid/content/res/Resources;

    const v5, 0x7f07078b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setSummary(Ljava/lang/String;)V

    const-string/jumbo v4, "assets://img/icon_game_booster.png"

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setIcon(Ljava/lang/String;)V

    const-string/jumbo v4, "drawable://2130837783"

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setImgUrl(Ljava/lang/String;)V

    const-string/jumbo v4, "game_boost_international"

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setStatKey(Ljava/lang/String;)V

    new-instance v4, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {v4, v0}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/miui/common/card/models/ListTitleCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/ListTitleCardModel;-><init>()V

    sget-object v1, Lcom/miui/securityscan/cards/a;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f070773

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ListTitleCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securityscan/cards/b;->Ch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x3

    invoke-static {v1, v0}, Lcom/miui/securityscan/cards/DataModel;->CR(II)I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_4

    new-instance v6, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    invoke-direct {v6}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;-><init>()V

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setHomePageFunc(Z)V

    if-ne v5, v8, :cond_2

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setTopRow(Z)V

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setBottomRow(Z)V

    :cond_0
    :goto_2
    mul-int/lit8 v7, v2, 0x3

    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x3

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v4, v7, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setTopRow(Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v5, -0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;->setBottomRow(Z)V

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public static BY()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/securityscan/cards/a;->Bm:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static BZ()Ljava/util/ArrayList;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securityscan/cards/a;->BX()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/cards/a;->BW()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
