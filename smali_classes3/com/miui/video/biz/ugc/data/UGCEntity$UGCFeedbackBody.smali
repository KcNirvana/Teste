.class public final Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;
.super Ljava/lang/Object;
.source "UGCEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/ugc/data/UGCEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UGCFeedbackBody"
.end annotation


# instance fields
.field public Id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field public playId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_id"
    .end annotation
.end field

.field public play_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_time"
    .end annotation
.end field

.field public recoId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reco_id"
    .end annotation
.end field

.field public reportType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "report_type"
    .end annotation
.end field

.field public shareto:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shareto"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;->Id:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/video/biz/ugc/data/UGCEntity;->reco_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;->recoId:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;->reportType:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/video/biz/ugc/data/UGCEntity;->play_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;->playId:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/video/biz/ugc/data/UGCEntity;->share_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;->shareto:Ljava/lang/String;

    const-string v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p2, Lcom/miui/video/biz/ugc/data/UGCEntity;->duration:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;->play_time:Ljava/lang/String;

    :cond_0
    return-void
.end method
