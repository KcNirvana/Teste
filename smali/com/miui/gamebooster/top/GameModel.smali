.class public Lcom/miui/gamebooster/top/GameModel;
.super Lcom/miui/gamebooster/top/BaseModel;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final synthetic rg:[I


# instance fields
.field private action:I

.field private bigImage:Ljava/lang/String;

.field private button:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field protected mCardType:Lcom/miui/gamebooster/top/BaseModel$CardType;

.field private mDataAdapter:Lcom/miui/gamebooster/top/a;

.field private mGameState:Lcom/miui/gamebooster/top/GameModel$GameState;

.field private packageName:Ljava/lang/String;

.field private rank:I

.field private summary:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private typeRGB:Ljava/util/HashMap;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/top/BaseModel$CardType;Lorg/json/JSONObject;I)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/top/BaseModel;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/top/GameModel$1;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/top/GameModel$1;-><init>(Lcom/miui/gamebooster/top/GameModel;)V

    iput-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->typeRGB:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/miui/gamebooster/top/GameModel;->mCardType:Lcom/miui/gamebooster/top/BaseModel$CardType;

    iput p3, p0, Lcom/miui/gamebooster/top/GameModel;->rank:I

    const-string/jumbo v0, "displayName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->title:Ljava/lang/String;

    const-string/jumbo v0, "className"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->type:Ljava/lang/String;

    const-string/jumbo v0, "gameSummary"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->summary:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://ts.market.mi-img.com/thumbnail/jpeg/l100/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "icon"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->icon:Ljava/lang/String;

    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->packageName:Ljava/lang/String;

    return-void
.end method

.method private sY(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;ZLcom/miui/gamebooster/top/a;)V
    .locals 5

    const v4, 0x7f080093

    const v3, 0x7f08008e

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/top/GameModel;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/a;->eO(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/gamebooster/top/GameModel$GameState;->rj:Lcom/miui/gamebooster/top/GameModel$GameState;

    iput-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->mGameState:Lcom/miui/gamebooster/top/GameModel$GameState;

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/miui/gamebooster/top/GameModel;->rank:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->type:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->typeRGB:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gamebooster/top/GameModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->typeRGB:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/gamebooster/top/GameModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->summary:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/miui/gamebooster/top/GameModel;->sZ()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/top/GameModel;->mGameState:Lcom/miui/gamebooster/top/GameModel$GameState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/top/GameModel$GameState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget v0, p0, Lcom/miui/gamebooster/top/GameModel;->rank:I

    packed-switch v0, :pswitch_data_1

    iget v0, p0, Lcom/miui/gamebooster/top/GameModel;->rank:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_3
    if-eqz p6, :cond_1

    if-eqz p7, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->icon:Ljava/lang/String;

    sget-object v1, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    iget-object v2, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, p6, v1, v2}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    sget-object v0, Lcom/miui/gamebooster/top/GameModel$GameState;->ri:Lcom/miui/gamebooster/top/GameModel$GameState;

    iput-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->mGameState:Lcom/miui/gamebooster/top/GameModel$GameState;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070911

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070912

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->icon:Ljava/lang/String;

    invoke-virtual {p8}, Lcom/miui/gamebooster/top/a;->th()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p6, v1}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static synthetic sZ()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/top/GameModel;->rg:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/top/GameModel;->rg:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/top/GameModel$GameState;->values()[Lcom/miui/gamebooster/top/GameModel$GameState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/top/GameModel$GameState;->ri:Lcom/miui/gamebooster/top/GameModel$GameState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/top/GameModel$GameState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/top/GameModel$GameState;->rj:Lcom/miui/gamebooster/top/GameModel$GameState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/top/GameModel$GameState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/gamebooster/top/GameModel;->rg:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0300c0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "tab2_gameranking"

    iget-object v1, p0, Lcom/miui/gamebooster/top/GameModel;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/gamebooster/top/GameModel;->sZ()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/top/GameModel;->mGameState:Lcom/miui/gamebooster/top/GameModel$GameState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/top/GameModel$GameState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->mDataAdapter:Lcom/miui/gamebooster/top/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/top/a;->getHandler()Lcom/miui/common/d/f;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gamebooster/top/GameModel;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Lcom/miui/common/d/f;->aLg(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0185

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/top/GameModel;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/a/a;->eV(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/top/GameModel;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/top/GameModel;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/a/a;->eV(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sW(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/top/a;)V
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/top/BaseModel;->sW(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/top/a;)V

    iput-object p4, p0, Lcom/miui/gamebooster/top/GameModel;->mDataAdapter:Lcom/miui/gamebooster/top/a;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/top/b;

    iget-object v1, v0, Lcom/miui/gamebooster/top/b;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/miui/gamebooster/top/b;->rm:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/miui/gamebooster/top/b;->rn:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/miui/gamebooster/top/b;->ro:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/miui/gamebooster/top/b;->rp:Landroid/widget/Button;

    iget-object v6, v0, Lcom/miui/gamebooster/top/b;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/miui/gamebooster/top/GameModel;->sY(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;ZLcom/miui/gamebooster/top/a;)V

    return-void
.end method
