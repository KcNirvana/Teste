.class public Lcom/miui/common/datamodel/Function;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final aBg:Ljava/util/ArrayList;

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

    sput-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/datamodel/Function;->color:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->models:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/datamodel/Function;->color:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->models:Ljava/util/List;

    const-string/jumbo v0, "functionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/Function;->action:I

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/Function;->template:I

    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->icon:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/common/datamodel/b;->aJQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->icon:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->title:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->summary:Ljava/lang/String;

    const-string/jumbo v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->button:Ljava/lang/String;

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/Function;->type:I

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->url:Ljava/lang/String;

    const-string/jumbo v0, "buttonColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/Function;->color:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string/jumbo v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->bigImage:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->dataId:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Function"

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static aKe(Lorg/json/JSONObject;)Lcom/miui/common/datamodel/Function;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "functionId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/common/datamodel/b;->aJL(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lcom/miui/common/datamodel/Function;->aBg:Ljava/util/ArrayList;

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
    new-instance v0, Lcom/miui/common/datamodel/Function;

    invoke-direct {v0, p0}, Lcom/miui/common/datamodel/Function;-><init>(Lorg/json/JSONObject;)V

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

.method private aKf(Lcom/miui/common/datamodel/q;)V
    .locals 5

    invoke-static {}, Lcom/miui/common/datamodel/b;->aJI()Ljava/util/List;

    move-result-object v2

    iget-object v0, p1, Lcom/miui/common/datamodel/q;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/datamodel/Function;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/common/datamodel/q;->aAU:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/common/datamodel/Function;->button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

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

    iget-object v3, p1, Lcom/miui/common/datamodel/q;->aAV:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    sget-object v4, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v3, v4}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private aKg(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/miui/common/datamodel/Function;->type:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/miui/common/datamodel/Function;->open:Z

    if-eqz v0, :cond_2

    const v0, 0x7f07075a

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget v0, p0, Lcom/miui/common/datamodel/Function;->template:I

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
    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->summary:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    if-eqz p6, :cond_8

    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->icon:Ljava/lang/String;

    sget-object v1, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, p4, v1}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    :cond_0
    :goto_2
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->bigImage:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->bigImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->bigImage:Ljava/lang/String;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p5, v1}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->button:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->button:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/miui/common/datamodel/Function;->color:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/miui/common/datamodel/Function;->open:Z

    if-eqz v0, :cond_7

    :cond_5
    iget v0, p0, Lcom/miui/common/datamodel/Function;->template:I

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
    iget v0, p0, Lcom/miui/common/datamodel/Function;->color:I

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->icon:Ljava/lang/String;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public static aKh(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_network_assistant"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_network_assistant"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private aKi(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/common/datamodel/Function;->open:Z

    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->listAdapter:Lcom/miui/common/datamodel/z;

    invoke-virtual {v0}, Lcom/miui/common/datamodel/z;->notifyDataSetChanged()V

    return-void
.end method

.method public static aKj(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

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

.method public static aKk(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
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

.method static synthetic aKm(Lcom/miui/common/datamodel/Function;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/datamodel/Function;->open:Z

    return p1
.end method


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    iget v0, p0, Lcom/miui/common/datamodel/Function;->template:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/e;

    iget-object v1, v0, Lcom/miui/common/datamodel/e;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/miui/common/datamodel/e;->aAn:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/miui/common/datamodel/e;->aAm:Landroid/widget/Button;

    iget-object v4, v0, Lcom/miui/common/datamodel/e;->icon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/miui/common/datamodel/e;->aAl:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/common/datamodel/Function;->aKg(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/l;

    iget-object v1, v0, Lcom/miui/common/datamodel/l;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/miui/common/datamodel/l;->aAn:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/miui/common/datamodel/l;->aAm:Landroid/widget/Button;

    iget-object v4, v0, Lcom/miui/common/datamodel/l;->icon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/miui/common/datamodel/l;->aAl:Landroid/widget/ImageView;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/common/datamodel/Function;->aKg(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/m;

    iget-object v1, v0, Lcom/miui/common/datamodel/m;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/miui/common/datamodel/m;->aAn:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/miui/common/datamodel/m;->aAm:Landroid/widget/Button;

    iget-object v4, v0, Lcom/miui/common/datamodel/m;->icon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/miui/common/datamodel/m;->aAl:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/common/datamodel/Function;->aKg(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/q;

    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Function;->aKf(Lcom/miui/common/datamodel/q;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public aKl(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi"

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    new-instance v6, Lcom/miui/common/datamodel/B;

    invoke-direct {v6, p0}, Lcom/miui/common/datamodel/B;-><init>(Lcom/miui/common/datamodel/Function;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public clone()Lcom/miui/common/datamodel/Function;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/miui/common/datamodel/BaseModel;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    check-cast v0, Lcom/miui/common/datamodel/Function;
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

    check-cast v0, Lcom/miui/common/datamodel/Function;

    return-object v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/datamodel/Function;->clone()Lcom/miui/common/datamodel/Function;

    move-result-object v0

    return-object v0
.end method

.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/miui/common/datamodel/Function;->action:I

    return v0
.end method

.method public getLayoutId()I
    .locals 2

    const v0, 0x7f030176

    iget v1, p0, Lcom/miui/common/datamodel/Function;->template:I

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

    iget v0, p0, Lcom/miui/common/datamodel/Function;->action:I

    instance-of v1, p1, Landroid/widget/Button;

    if-nez v1, :cond_0

    const v1, 0x7f0a0185

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/miui/common/datamodel/Function;->open:Z

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "extra_show_security_notification"

    invoke-static {v0, v3, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.securitycenter.action.NOTIFICATION_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.miui.securitycenter"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/common/datamodel/Function;->aKi(Z)V

    :goto_1
    iget-object v0, p0, Lcom/miui/common/datamodel/Function;->dataId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/common/datamodel/Function;->action:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Function;->dataId:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/miui/common/datamodel/Function;->open:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/securitycenter/a;->brO(Z)V

    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Function;->aKi(Z)V

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "miui.intent.action.GARBAGE_DEEPCLEAN"

    invoke-static {v1, v0}, Lcom/miui/common/datamodel/Function;->aKj(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-boolean v0, p0, Lcom/miui/common/datamodel/Function;->open:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/miui/securitycenter/a;->bsr(Landroid/content/Context;Z)V

    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Function;->aKi(Z)V

    goto :goto_1

    :pswitch_5
    iget-boolean v0, p0, Lcom/miui/common/datamodel/Function;->open:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/miui/securitycenter/a;->bsj(Landroid/content/Context;Z)V

    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Function;->aKi(Z)V

    goto :goto_1

    :pswitch_6
    iget-boolean v0, p0, Lcom/miui/common/datamodel/Function;->open:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/miui/common/datamodel/Function;->aKh(Landroid/content/Context;Z)V

    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Function;->aKi(Z)V

    goto :goto_1

    :pswitch_7
    iget-boolean v0, p0, Lcom/miui/common/datamodel/Function;->open:Z

    xor-int/lit8 v1, v0, 0x1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "status_bar_show_network_speed"

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1}, Lcom/miui/common/datamodel/Function;->aKi(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_8
    iget-boolean v0, p0, Lcom/miui/common/datamodel/Function;->open:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/a/e/a;->buc(Landroid/content/Context;Z)V

    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Function;->aKi(Z)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v1}, Lcom/miui/common/datamodel/Function;->aKl(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "enter_homepage_way"

    const-string/jumbo v3, "00002"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "miui.intent.action.ANTI_VIRUS"

    invoke-static {v1, v2, v0}, Lcom/miui/common/datamodel/Function;->aKk(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :pswitch_b
    const-string/jumbo v0, "miui.intent.action.OP_AUTO_START"

    invoke-static {v1, v0}, Lcom/miui/common/datamodel/Function;->aKj(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    const-string/jumbo v0, "miui.powercenter.intent.action.BOOT_SHUTDOWN_ONTIME"

    invoke-static {v1, v0}, Lcom/miui/common/datamodel/Function;->aKj(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_d
    const-string/jumbo v0, "miui.intent.action.NETWORKASSISTANT_FIREWALL"

    invoke-static {v1, v0}, Lcom/miui/common/datamodel/Function;->aKj(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "enter_way"

    const-string/jumbo v3, "00009"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.securitycenter.action.TRANSITION"

    invoke-static {v1, v2, v0}, Lcom/miui/common/datamodel/Function;->aKk(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :pswitch_10
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_11
    const-string/jumbo v0, "miui.powercenter.intent.action.QUICK_OPTIMIZE"

    invoke-static {v1, v0}, Lcom/miui/common/datamodel/Function;->aKj(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_12
    const-string/jumbo v0, "com.miui.gamebooster.action.ACCESS_MAINACTIVITY"

    invoke-static {v1, v0}, Lcom/miui/common/datamodel/Function;->aKj(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    const-string/jumbo v0, "miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT"

    invoke-static {v1, v0}, Lcom/miui/common/datamodel/Function;->aKj(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_10
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method
