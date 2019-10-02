.class final Lcom/ooyala/pulse/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:J

.field c:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/pulse/l;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ooyala/pulse/l;->b:J

    invoke-virtual {p0}, Lcom/ooyala/pulse/l;->b()V

    return-void
.end method

.method protected final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/ooyala/pulse/l;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ooyala/pulse/l;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/pulse/l;->c:Z

    :cond_0
    return-void
.end method

.method protected final c()J
    .locals 6

    iget-boolean v0, p0, Lcom/ooyala/pulse/l;->c:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ooyala/pulse/l;->b:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ooyala/pulse/l;->a:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/ooyala/pulse/l;->b:J

    return-wide v0
.end method
