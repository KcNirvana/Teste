.class public Lcom/miui/video/player/service/corelocalvideo/audioeffcet/TaurusDiracUtils;
.super Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;
.source "TaurusDiracUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TaurusDiracUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public setLevel(Landroid/content/Context;IF)V
    .locals 6

    const-string v0, "diracband=%d;value=%f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/TaurusDiracUtils;->formatStd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaurusDiracUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set EQ Level: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-super {p0, p1, v3, p3}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->setLevel(Landroid/content/Context;IF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    const/16 v0, 0x8

    invoke-super {p0, p1, v0, p3}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->setLevel(Landroid/content/Context;IF)V

    :cond_1
    :goto_0
    add-int/2addr p2, v4

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->setLevel(Landroid/content/Context;IF)V

    return-void
.end method
