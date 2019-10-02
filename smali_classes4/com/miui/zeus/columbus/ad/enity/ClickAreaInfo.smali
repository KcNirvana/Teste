.class public Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;
.super Ljava/lang/Object;
.source "ClickAreaInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClickAreaInfo"


# instance fields
.field private dh:I

.field private dw:I

.field private rawX:F

.field private rawY:F

.field private view:Ljava/lang/String;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDh(I)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->dh:I

    return-void
.end method

.method public setDw(I)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->dw:I

    return-void
.end method

.method public setRawX(F)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->rawX:F

    return-void
.end method

.method public setRawY(F)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->rawY:F

    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->view:Ljava/lang/String;

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "x"

    iget v2, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "y"

    iget v2, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rawX"

    iget v2, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->rawX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rawY"

    iget v2, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->rawY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dw"

    iget v2, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->dw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dh"

    iget v2, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->dh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "view"

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->view:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ClickAreaInfo"

    const-string v3, "ClickAreaInfo toString error"

    invoke-static {v2, v3, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
