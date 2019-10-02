.class public Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;
.super Ljava/lang/Object;
.source "MagicTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shadow"
.end annotation


# instance fields
.field public final color:I

.field public final dx:F

.field public final dy:F

.field public final r:F


# direct methods
.method public constructor <init>(FFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->r:F

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->dx:F

    iput p3, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->dy:F

    iput p4, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->color:I

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "r"

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->r:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "dx"

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->dx:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "dy"

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->dy:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "alpha"

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "red"

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "green"

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "blue"

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView$Shadow;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
