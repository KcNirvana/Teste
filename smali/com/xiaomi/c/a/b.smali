.class public Lcom/xiaomi/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/c/a/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method private constructor <init>()V
    .locals 4

    const-wide/32 v2, 0x15180

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/c/a/b;->b:Z

    iput-boolean v1, p0, Lcom/xiaomi/c/a/b;->c:Z

    iput-boolean v1, p0, Lcom/xiaomi/c/a/b;->d:Z

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/xiaomi/c/a/b;->e:J

    iput-wide v2, p0, Lcom/xiaomi/c/a/b;->f:J

    iput-wide v2, p0, Lcom/xiaomi/c/a/b;->g:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/c/a/b$a;)V
    .locals 12

    const-wide/32 v10, 0x100000

    const-wide/16 v8, -0x1

    const-wide/32 v6, 0x15180

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/xiaomi/c/a/b;->b:Z

    iput-boolean v4, p0, Lcom/xiaomi/c/a/b;->c:Z

    iput-boolean v4, p0, Lcom/xiaomi/c/a/b;->d:Z

    iput-wide v10, p0, Lcom/xiaomi/c/a/b;->e:J

    iput-wide v6, p0, Lcom/xiaomi/c/a/b;->f:J

    iput-wide v6, p0, Lcom/xiaomi/c/a/b;->g:J

    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->a(Lcom/xiaomi/c/a/b$a;)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/xiaomi/c/a/b;->b:Z

    :goto_0
    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->b(Lcom/xiaomi/c/a/b$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->b(Lcom/xiaomi/c/a/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/a/b;->a:Ljava/lang/String;

    :goto_1
    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->c(Lcom/xiaomi/c/a/b$a;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->c(Lcom/xiaomi/c/a/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/c/a/b;->e:J

    :goto_2
    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->d(Lcom/xiaomi/c/a/b$a;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_4

    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->d(Lcom/xiaomi/c/a/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/c/a/b;->f:J

    :goto_3
    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->e(Lcom/xiaomi/c/a/b$a;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_5

    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->e(Lcom/xiaomi/c/a/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/c/a/b;->g:J

    :goto_4
    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->f(Lcom/xiaomi/c/a/b$a;)I

    move-result v0

    if-nez v0, :cond_6

    iput-boolean v4, p0, Lcom/xiaomi/c/a/b;->c:Z

    :goto_5
    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->g(Lcom/xiaomi/c/a/b$a;)I

    move-result v0

    if-nez v0, :cond_8

    iput-boolean v4, p0, Lcom/xiaomi/c/a/b;->d:Z

    :goto_6
    return-void

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->a(Lcom/xiaomi/c/a/b$a;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iput-boolean v3, p0, Lcom/xiaomi/c/a/b;->b:Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_switch_key"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/c/a/b;->b:Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/xiaomi/c/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/a/b;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_file_length_key"

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/xiaomi/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/c/a/b;->e:J

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_event_frequency_key"

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/xiaomi/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/c/a/b;->f:J

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_perf_frequency_key"

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/xiaomi/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/c/a/b;->g:J

    goto :goto_4

    :cond_6
    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->f(Lcom/xiaomi/c/a/b$a;)I

    move-result v0

    if-ne v0, v3, :cond_7

    iput-boolean v3, p0, Lcom/xiaomi/c/a/b;->c:Z

    goto :goto_5

    :cond_7
    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_event_switch_key"

    invoke-virtual {v0, v1, v2, v4}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/c/a/b;->c:Z

    goto :goto_5

    :cond_8
    invoke-static {p2}, Lcom/xiaomi/c/a/b$a;->g(Lcom/xiaomi/c/a/b$a;)I

    move-result v0

    if-ne v0, v3, :cond_9

    iput-boolean v3, p0, Lcom/xiaomi/c/a/b;->d:Z

    goto :goto_6

    :cond_9
    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_perf_switch_key"

    invoke-virtual {v0, v1, v2, v4}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/c/a/b;->d:Z

    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/c/a/b$a;Lcom/xiaomi/c/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/c/a/b;-><init>(Landroid/content/Context;Lcom/xiaomi/c/a/b$a;)V

    return-void
.end method

.method public static a()Lcom/xiaomi/c/a/b$a;
    .locals 1

    new-instance v0, Lcom/xiaomi/c/a/b$a;

    invoke-direct {v0}, Lcom/xiaomi/c/a/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_key"

    iget-object v3, p0, Lcom/xiaomi/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_switch_key"

    iget-boolean v3, p0, Lcom/xiaomi/c/a/b;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_file_length_key"

    iget-wide v4, p0, Lcom/xiaomi/c/a/b;->e:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_event_switch_key"

    iget-boolean v3, p0, Lcom/xiaomi/c/a/b;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_perf_switch_key"

    iget-boolean v3, p0, Lcom/xiaomi/c/a/b;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_event_frequency_key"

    iget-wide v4, p0, Lcom/xiaomi/c/a/b;->f:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_perf_frequency_key"

    iget-wide v4, p0, Lcom/xiaomi/c/a/b;->g:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/c/a/b;->f:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/c/a/b;->g:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/c/a/b;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/c/a/b;

    iget-boolean v1, p0, Lcom/xiaomi/c/a/b;->b:Z

    iget-boolean v2, p1, Lcom/xiaomi/c/a/b;->b:Z

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/c/a/b;->e:J

    iget-wide v4, p1, Lcom/xiaomi/c/a/b;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/c/a/b;->c:Z

    iget-boolean v2, p1, Lcom/xiaomi/c/a/b;->c:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/c/a/b;->d:Z

    iget-boolean v2, p1, Lcom/xiaomi/c/a/b;->d:Z

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/c/a/b;->f:J

    iget-wide v4, p1, Lcom/xiaomi/c/a/b;->f:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/c/a/b;->g:J

    iget-wide v4, p1, Lcom/xiaomi/c/a/b;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/c/a/b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    const/16 v8, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/c/a/b;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/xiaomi/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/xiaomi/c/a/b;->e:J

    iget-wide v6, p0, Lcom/xiaomi/c/a/b;->e:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/xiaomi/c/a/b;->c:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/xiaomi/c/a/b;->d:Z

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/xiaomi/c/a/b;->f:J

    iget-wide v4, p0, Lcom/xiaomi/c/a/b;->f:J

    ushr-long/2addr v4, v8

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/xiaomi/c/a/b;->g:J

    iget-wide v4, p0, Lcom/xiaomi/c/a/b;->g:J

    ushr-long/2addr v4, v8

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config{mEventEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/c/a/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAESKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxFileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/c/a/b;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventUploadSwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/c/a/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPerfUploadSwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/c/a/b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventUploadFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/c/a/b;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPerfUploadFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/c/a/b;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
