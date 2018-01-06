.class public Lcom/xiaomi/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/g/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/d/a/a$a;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/text/SimpleDateFormat;

.field private c:Lcom/xiaomi/g/a;

.field private d:Lcom/xiaomi/d/a/a$a;

.field private e:Lcom/xiaomi/d/a/a$a;

.field private f:Lcom/xiaomi/g/d;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/xiaomi/b/a/a/j;->c()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/xiaomi/d/a/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/xiaomi/g/a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/d/a/a;->b:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/xiaomi/d/a/a;->c:Lcom/xiaomi/g/a;

    iput-object v2, p0, Lcom/xiaomi/d/a/a;->d:Lcom/xiaomi/d/a/a$a;

    iput-object v2, p0, Lcom/xiaomi/d/a/a;->e:Lcom/xiaomi/d/a/a$a;

    iput-object v2, p0, Lcom/xiaomi/d/a/a;->f:Lcom/xiaomi/g/d;

    const-string v0, "[Slim] "

    iput-object v0, p0, Lcom/xiaomi/d/a/a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/d/a/a;->c:Lcom/xiaomi/g/a;

    invoke-direct {p0}, Lcom/xiaomi/d/a/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/d/a/a;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/d/a/a;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/xiaomi/d/a/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/d/a/a$a;-><init>(Lcom/xiaomi/d/a/a;Z)V

    iput-object v0, p0, Lcom/xiaomi/d/a/a;->d:Lcom/xiaomi/d/a/a$a;

    new-instance v0, Lcom/xiaomi/d/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/d/a/a$a;-><init>(Lcom/xiaomi/d/a/a;Z)V

    iput-object v0, p0, Lcom/xiaomi/d/a/a;->e:Lcom/xiaomi/d/a/a$a;

    iget-object v0, p0, Lcom/xiaomi/d/a/a;->c:Lcom/xiaomi/g/a;

    iget-object v1, p0, Lcom/xiaomi/d/a/a;->d:Lcom/xiaomi/d/a/a$a;

    iget-object v2, p0, Lcom/xiaomi/d/a/a;->d:Lcom/xiaomi/d/a/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/g/a;->a(Lcom/xiaomi/g/f;Lcom/xiaomi/g/b/a;)V

    iget-object v0, p0, Lcom/xiaomi/d/a/a;->c:Lcom/xiaomi/g/a;

    iget-object v1, p0, Lcom/xiaomi/d/a/a;->e:Lcom/xiaomi/d/a/a$a;

    iget-object v2, p0, Lcom/xiaomi/d/a/a;->e:Lcom/xiaomi/d/a/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/g/a;->b(Lcom/xiaomi/g/f;Lcom/xiaomi/g/b/a;)V

    new-instance v0, Lcom/xiaomi/d/a/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/d/a/b;-><init>(Lcom/xiaomi/d/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/d/a/a;->f:Lcom/xiaomi/g/d;

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/d/a/a;)Lcom/xiaomi/g/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/d/a/a;->c:Lcom/xiaomi/g/a;

    return-object v0
.end method
