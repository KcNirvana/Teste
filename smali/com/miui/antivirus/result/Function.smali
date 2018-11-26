.class public Lcom/miui/antivirus/result/Function;
.super Lcom/miui/antivirus/result/BaseModel;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final amI:Ljava/util/ArrayList;

.field private static final serialVersionUID:J = 0x202df0a190470794L


# instance fields
.field private action:I

.field private bigImage:Ljava/lang/String;

.field private button:Ljava/lang/String;

.field private color:I

.field private dataId:Ljava/lang/String;

.field private flag:I

.field private icon:Ljava/lang/String;

.field private models:Ljava/util/List;

.field private object:Ljava/lang/Object;

.field private open:Z

.field private summary:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/antivirus/result/Function;->amI:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/antivirus/result/Function;->amI:Ljava/util/ArrayList;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/antivirus/result/Function;->amI:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/antivirus/result/Function;->amI:Ljava/util/ArrayList;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/antivirus/result/Function;->amI:Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/antivirus/result/Function;->amI:Ljava/util/ArrayList;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/antivirus/result/Function;->amI:Ljava/util/ArrayList;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/antivirus/result/Function;->amI:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/BaseModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/Function;->color:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->models:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/antivirus/result/BaseModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/Function;->color:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->models:Ljava/util/List;

    const-string/jumbo v0, "functionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/Function;->action:I

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/Function;->template:I

    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->icon:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/antivirus/result/h;->atF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->icon:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->title:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->summary:Ljava/lang/String;

    const-string/jumbo v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->button:Ljava/lang/String;

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/Function;->type:I

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->url:Ljava/lang/String;

    const-string/jumbo v0, "buttonColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/Function;->color:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string/jumbo v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->bigImage:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/Function;->dataId:Ljava/lang/String;

    iget v0, p0, Lcom/miui/antivirus/result/Function;->action:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Function"

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/result/Function;->atZ(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public static atG(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/Function;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "functionId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/antivirus/result/h;->atB(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lcom/miui/antivirus/result/Function;->amI:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    const-string/jumbo v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-object v2

    :pswitch_1
    new-instance v0, Lcom/miui/antivirus/result/Function;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/result/Function;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private atJ(Lcom/miui/antivirus/result/r;)V
    .locals 5

    invoke-static {}, Lcom/miui/antivirus/result/h;->atA()Ljava/util/List;

    move-result-object v2

    iget-object v0, p1, Lcom/miui/antivirus/result/r;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antivirus/result/Function;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/antivirus/result/r;->anx:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/antivirus/result/Function;->button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p1, Lcom/miui/antivirus/result/r;->any:I

    if-ge v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg_icon://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/miui/antivirus/result/r;->anz:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    sget-object v4, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v3, v4}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private atK(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;ZLcom/miui/antivirus/result/i;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/miui/antivirus/result/Function;->type:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/miui/antivirus/result/Function;->open:Z

    if-eqz v0, :cond_2

    const v0, 0x7f07075a

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget v0, p0, Lcom/miui/antivirus/result/Function;->template:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->summary:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    if-eqz p6, :cond_8

    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->icon:Ljava/lang/String;

    sget-object v1, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, p4, v1}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    :cond_0
    :goto_2
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->bigImage:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->bigImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->bigImage:Ljava/lang/String;

    invoke-virtual {p7}, Lcom/miui/antivirus/result/i;->atO()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p5, v1}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->button:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->button:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/miui/antivirus/result/Function;->color:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/miui/antivirus/result/Function;->open:Z

    if-eqz v0, :cond_7

    :cond_5
    iget v0, p0, Lcom/miui/antivirus/result/Function;->template:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/miui/antivirus/result/Function;->color:I

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/miui/antivirus/result/Function;->icon:Ljava/lang/String;

    invoke-virtual {p7}, Lcom/miui/antivirus/result/i;->atO()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public static atL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.gamebooster.action.ACCESS_MAINACTIVITY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "track_gamebooster_enter_way"

    const-string/jumbo v2, "00004"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Function"

    const-string/jumbo v2, "viewActionActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static atM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Function"

    const-string/jumbo v2, "viewActionActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/BaseModel;->asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V

    iget v0, p0, Lcom/miui/antivirus/result/Function;->action:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget v0, p0, Lcom/miui/antivirus/result/Function;->template:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :sswitch_0
    const-string/jumbo v0, "v_rs_cleanmaster"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azY(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "v_rs_power_optimazation"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azY(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "v_rs_auto_start"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azY(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "v_rs_app_manage"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azY(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "v_rs_applock"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azY(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "v_rs_gamebooster"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azY(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/k;

    iget-object v1, v0, Lcom/miui/antivirus/result/k;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/miui/antivirus/result/k;->amR:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/miui/antivirus/result/k;->amT:Landroid/widget/Button;

    iget-object v4, v0, Lcom/miui/antivirus/result/k;->icon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/miui/antivirus/result/k;->amS:Landroid/widget/ImageView;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/antivirus/result/Function;->atK(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;ZLcom/miui/antivirus/result/i;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/k;

    iget-object v1, v0, Lcom/miui/antivirus/result/k;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/miui/antivirus/result/k;->amR:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/miui/antivirus/result/k;->amT:Landroid/widget/Button;

    iget-object v4, v0, Lcom/miui/antivirus/result/k;->icon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/miui/antivirus/result/k;->amS:Landroid/widget/ImageView;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/antivirus/result/Function;->atK(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;ZLcom/miui/antivirus/result/i;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/r;

    invoke-direct {p0, v0}, Lcom/miui/antivirus/result/Function;->atJ(Lcom/miui/antivirus/result/r;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1c -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x2b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public atH(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/Function;->action:I

    return-void
.end method

.method public atI(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/Function;->type:I

    return-void
.end method

.method public clone()Lcom/miui/antivirus/result/Function;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/miui/antivirus/result/BaseModel;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    check-cast v0, Lcom/miui/antivirus/result/Function;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_0
    const-string/jumbo v2, "Function"

    const-string/jumbo v3, "msg"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    check-cast v0, Lcom/miui/antivirus/result/Function;

    return-object v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/result/Function;->clone()Lcom/miui/antivirus/result/Function;

    move-result-object v0

    return-object v0
.end method

.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/result/Function;->action:I

    return v0
.end method

.method public getLayoutId()I
    .locals 2

    const v0, 0x7f030176

    iget v1, p0, Lcom/miui/antivirus/result/Function;->template:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f03016a

    goto :goto_0

    :pswitch_2
    const v0, 0x7f03016b

    goto :goto_0

    :pswitch_3
    const v0, 0x7f030172

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget v1, p0, Lcom/miui/antivirus/result/Function;->action:I

    instance-of v0, p1, Landroid/widget/Button;

    if-nez v0, :cond_0

    const v0, 0x7f0a0185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    sparse-switch v1, :sswitch_data_0

    return-void

    :sswitch_0
    const-string/jumbo v1, "v_rs_cleanmaster"

    invoke-static {v1}, Lcom/miui/antivirus/a/e;->azX(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/antivirus/result/Function;->dataId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/antivirus/result/Function;->action:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/Function;->dataId:Ljava/lang/String;

    :cond_1
    const-string/jumbo v1, "CLICK_FUNCTION"

    invoke-static {v0, v1}, Lcom/miui/antivirus/a/b;->azi(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :sswitch_1
    const-string/jumbo v1, "miui.intent.action.GARBAGE_DEEPCLEAN"

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/Function;->atL(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "v_rs_auto_start"

    invoke-static {v1}, Lcom/miui/antivirus/a/e;->azX(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.action.OP_AUTO_START"

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/Function;->atL(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "com.miui.powercenter.PowerShutdownOnTime"

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/Function;->atL(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "v_rs_app_manage"

    invoke-static {v1}, Lcom/miui/antivirus/a/e;->azX(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "v_rs_applock"

    invoke-static {v1}, Lcom/miui/antivirus/a/e;->azX(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "enter_way"

    const-string/jumbo v3, "00009"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.securitycenter.action.TRANSITION"

    invoke-static {v0, v2, v1}, Lcom/miui/antivirus/result/Function;->atM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "v_rs_power_optimazation"

    invoke-static {v1}, Lcom/miui/antivirus/a/e;->azX(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.action.POWER_MANAGER"

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/Function;->atL(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "v_rs_gamebooster"

    invoke-static {v1}, Lcom/miui/antivirus/a/e;->azX(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.gamebooster.action.ACCESS_MAINACTIVITY"

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/Function;->atL(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x14 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1c -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_7
        0x2b -> :sswitch_0
        0x2c -> :sswitch_6
    .end sparse-switch
.end method

.method public setButton(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/Function;->button:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/Function;->icon:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/Function;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/Function;->template:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/Function;->title:Ljava/lang/String;

    return-void
.end method
