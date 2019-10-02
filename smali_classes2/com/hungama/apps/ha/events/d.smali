.class final Lcom/hungama/apps/ha/events/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hungama/apps/ha/e/d;


# instance fields
.field private final a:I

.field private b:Z

.field private c:Z

.field private d:Lcom/hungama/apps/ha/e/j;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hungama/apps/ha/e/j;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/hungama/apps/ha/events/d;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/apps/ha/events/d;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/apps/ha/events/d;->c:Z

    iput-object p1, p0, Lcom/hungama/apps/ha/events/d;->d:Lcom/hungama/apps/ha/e/j;

    iput-object p2, p0, Lcom/hungama/apps/ha/events/d;->e:Ljava/lang/String;

    iput v0, p0, Lcom/hungama/apps/ha/events/d;->f:I

    invoke-direct {p0}, Lcom/hungama/apps/ha/events/d;->c()V

    return-void
.end method

.method private a(I)V
    .locals 4

    new-instance v0, Lcom/hungama/apps/ha/a/a/b;

    const-string v1, "events"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hungama/apps/ha/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hungama/apps/ha/a/b;->a()Lcom/hungama/apps/ha/a/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hungama/apps/ha/a/b;->a(Lcom/hungama/apps/ha/a/a/a;)J

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/hungama/apps/ha/d/a$a;->a(J)I

    move-result p1

    const/4 v3, 0x7

    if-gt p1, v3, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/hungama/apps/ha/events/d;->d:Lcom/hungama/apps/ha/e/j;

    new-instance v3, Lcom/hungama/apps/ha/events/e;

    invoke-direct {p0, v2}, Lcom/hungama/apps/ha/events/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/hungama/apps/ha/events/d;->e:Ljava/lang/String;

    invoke-direct {v3, p0, v0, v2, v4}, Lcom/hungama/apps/ha/events/e;-><init>(Lcom/hungama/apps/ha/e/d;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/hungama/apps/ha/e/j;->a(Lcom/hungama/apps/ha/e/a;)V

    iput-boolean v1, p0, Lcom/hungama/apps/ha/events/d;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/hungama/apps/ha/c/a;->a()Lcom/hungama/apps/ha/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hungama/apps/ha/c/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/hungama/apps/ha/events/d;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/apps/ha/events/d;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/hungama/apps/ha/events/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/events/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/hungama/apps/ha/events/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object p1
.end method

.method private b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/hungama/apps/ha/events/d;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/hungama/apps/ha/events/d;->a()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/hungama/apps/ha/d/a$a;->a()J

    move-result-wide v0

    const-wide/32 v2, 0x93a80

    sub-long/2addr v0, v2

    new-instance v2, Lcom/hungama/apps/ha/a/a/b;

    const-string v3, "events"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created_on<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/hungama/apps/ha/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hungama/apps/ha/a/b;->a()Lcom/hungama/apps/ha/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hungama/apps/ha/a/b;->a(Lcom/hungama/apps/ha/a/a/a;)J

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hungama/apps/ha/events/d;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hungama/apps/ha/events/d;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hungama/apps/ha/events/d;->f:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    new-instance v0, Lcom/hungama/apps/ha/events/d$1;

    invoke-direct {v0, p0}, Lcom/hungama/apps/ha/events/d$1;-><init>(Lcom/hungama/apps/ha/events/d;)V

    const-string v1, "SELECT id, data, created_on FROM events ORDER BY id ASC LIMIT 1;"

    invoke-static {}, Lcom/hungama/apps/ha/a/b;->a()Lcom/hungama/apps/ha/a/b;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/hungama/apps/ha/a/b;->a(Ljava/lang/String;Lcom/hungama/apps/ha/a/a/d;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILcom/hungama/apps/ha/e/b;)V
    .locals 1

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/hungama/apps/ha/events/d;->f:I

    check-cast p2, Lcom/hungama/apps/ha/events/e$a;

    iget p1, p2, Lcom/hungama/apps/ha/events/e$a;->a:I

    invoke-direct {p0, p1}, Lcom/hungama/apps/ha/events/d;->a(I)V

    invoke-direct {p0}, Lcom/hungama/apps/ha/events/d;->b()V

    :cond_0
    return-void
.end method

.method public a(ILcom/hungama/apps/ha/e/h;)V
    .locals 0

    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lcom/hungama/apps/ha/events/d;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hungama/apps/ha/events/d;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hungama/apps/ha/events/d;->c:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/events/d;->g:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hungama/apps/ha/events/d;->b:Z

    return-void
.end method
