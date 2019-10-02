.class public Lcom/miui/zeus/columbus/common/DspWeightConfig;
.super Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;
.source "DspWeightConfig.java"


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "DspWeightConfig"


# instance fields
.field private dsp:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field private weight:I
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;-><init>()V

    return-void
.end method

.method public static final deserialize(Ljava/lang/String;)Lcom/miui/zeus/columbus/common/AdControl;
    .locals 2

    const-class v0, Lcom/miui/zeus/columbus/common/AdControl;

    const-string v1, "DspWeightConfig"

    invoke-static {v0, p0, v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/columbus/common/AdControl;

    return-object p0
.end method


# virtual methods
.method public getDsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/common/DspWeightConfig;->dsp:Ljava/lang/String;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DspWeightConfig"

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/common/DspWeightConfig;->weight:I

    return v0
.end method
