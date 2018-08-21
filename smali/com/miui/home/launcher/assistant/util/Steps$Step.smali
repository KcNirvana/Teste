.class public Lcom/miui/home/launcher/assistant/util/Steps$Step;
.super Ljava/lang/Object;
.source "Steps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/util/Steps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Step"
.end annotation


# instance fields
.field public beginTime:J

.field public endTime:J

.field public id:I

.field public mode:I

.field public steps:I


# direct methods
.method public constructor <init>(IJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->id:I

    iput-wide p2, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->beginTime:J

    iput-wide p4, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->endTime:J

    iput p6, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->mode:I

    iput p7, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->steps:I

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->mode:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Step{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", beginTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dd.MM.yyyy HH:mm:ss"

    iget-wide v2, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->beginTime:J

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dd.MM.yyyy HH:mm:ss"

    iget-wide v2, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->endTime:J

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getFormatDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/assistant/util/Steps$Step;->steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
