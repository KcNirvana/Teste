.class public Lcom/xiaomi/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Z

.field private static volatile d:Lcom/xiaomi/a/d;


# instance fields
.field private a:Lcom/xiaomi/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/a/j",
            "<",
            "Lcom/xiaomi/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/a/d;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/a/j;

    invoke-direct {v0}, Lcom/xiaomi/a/j;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/d;->a:Lcom/xiaomi/a/j;

    invoke-static {p1}, Lcom/xiaomi/a/a/a/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/d;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/a/e;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xiaomi/a/d;->b()V

    iget-object v0, p0, Lcom/xiaomi/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->a(Landroid/content/Context;)Lcom/xiaomi/a/a/d;

    iget-object v0, p0, Lcom/xiaomi/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/a/a/b;->a(Landroid/content/Context;)Lcom/xiaomi/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/a/a/b;->a()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xiaomi/a/d;
    .locals 2

    const-class v1, Lcom/xiaomi/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/a/d;->d:Lcom/xiaomi/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/a/d;->d:Lcom/xiaomi/a/d;

    :cond_0
    sget-object v0, Lcom/xiaomi/a/d;->d:Lcom/xiaomi/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/a/d;->c:Z

    return v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/xiaomi/a/m;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/xiaomi/a/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaomi/a/m;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/d;->a:Lcom/xiaomi/a/j;

    const-class v1, Lcom/xiaomi/a/m;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/a/j;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/xiaomi/a/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/m;

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    sput-boolean p1, Lcom/xiaomi/a/a/a/a;->a:Z

    iget-object v0, p0, Lcom/xiaomi/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->a(Landroid/content/Context;)Lcom/xiaomi/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/a/a/d;->a()Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/a/a/b/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/a/b;->b(Ljava/lang/String;)Lcom/xiaomi/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/a/d;->a(Ljava/lang/String;)Lcom/xiaomi/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/a/m;->a(Lcom/xiaomi/a/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    const-string v2, "JavascriptInterface trackAdAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2, p3}, Lcom/xiaomi/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/a/d;->a(Ljava/lang/String;)Lcom/xiaomi/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/a/m;->a(Lcom/xiaomi/a/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    const-string v2, "JavascriptInterface trackAdAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public trackCustomAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/xiaomi/a/b;->a()Lcom/xiaomi/a/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/a/d;->a(Ljava/lang/String;)Lcom/xiaomi/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/a/m;->a(Lcom/xiaomi/a/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    const-string v2, "JavascriptInterface trackCustomAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/a/b;->a(Ljava/lang/String;)Lcom/xiaomi/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/a/d;->a(Ljava/lang/String;)Lcom/xiaomi/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/a/m;->a(Lcom/xiaomi/a/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    const-string v2, "JavascriptInterface trackEventAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2, p3}, Lcom/xiaomi/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/a/d;->a(Ljava/lang/String;)Lcom/xiaomi/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/a/m;->a(Lcom/xiaomi/a/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    const-string v2, "JavascriptInterface trackEventAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
