.class public Lcom/miui/home/launcher/assistant/util/LabelUtil;
.super Ljava/lang/Object;
.source "LabelUtil.java"


# static fields
.field public static final LABEL_LOC_CENTER:Ljava/lang/String; = "center"

.field public static final LABEL_LOC_LEFT:Ljava/lang/String; = "left"

.field public static final LABEL_LOC_RIGHT:Ljava/lang/String; = "right"

.field private static sLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/util/LabelUtil;->sLabelMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabelDrawableId(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/util/LabelUtil;->sLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/assistant/util/LabelUtil;->sLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/assistant/util/LabelUtil;->sLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parserLabel(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/util/Label;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/miui/home/launcher/assistant/util/Label;

    invoke-direct {v4, v3}, Lcom/miui/home/launcher/assistant/util/Label;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method private static placeDrawableLeft(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/assistant/util/Util;->getLabelView(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static placeDrawableRight(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/assistant/util/Util;->getLabelView(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static setDrawableNull(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static setTextViewDrawable(Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/home/launcher/assistant/util/Label;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/util/Label;->getLoc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/util/Label;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/LabelUtil;->getLabelDrawableId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "left"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/assistant/util/LabelUtil;->placeDrawableLeft(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/assistant/util/LabelUtil;->placeDrawableRight(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public static setTextViewDrawables(Landroid/content/Context;Landroid/widget/TextView;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/TextView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/util/Label;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Textview can not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/util/Label;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/util/Label;

    invoke-static {p0, p1, v1}, Lcom/miui/home/launcher/assistant/util/LabelUtil;->setTextViewDrawable(Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/home/launcher/assistant/util/Label;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/miui/home/launcher/assistant/util/LabelUtil;->setDrawableNull(Landroid/widget/TextView;)V

    goto :goto_0
.end method
