.class public Lcom/miui/zeus/columbus/common/AdControl;
.super Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;
.source "AdControl.java"


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "AdControl"


# instance fields
.field private dspWeight:Ljava/util/List;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/zeus/columbus/common/DspWeightConfig;",
            ">;"
        }
    .end annotation
.end field

.field private duration:J
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field private endTimeInMills:J
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field private startTimeInMills:J
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

    const-string v1, "AdControl"

    invoke-static {v0, p0, v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/columbus/common/AdControl;

    return-object p0
.end method


# virtual methods
.method public getDspWeight()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/zeus/columbus/common/DspWeightConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/columbus/common/AdControl;->dspWeight:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/zeus/columbus/common/AdControl;->duration:J

    return-wide v0
.end method

.method public getEndTimeInMills()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/zeus/columbus/common/AdControl;->endTimeInMills:J

    return-wide v0
.end method

.method public getStartTimeInMills()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/zeus/columbus/common/AdControl;->startTimeInMills:J

    return-wide v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AdControl"

    return-object v0
.end method
