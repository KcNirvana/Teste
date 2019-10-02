.class public Lcom/xiaomi/push/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/fy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/bi$a;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private a:Lcom/xiaomi/push/bi$a;

.field private a:Lcom/xiaomi/push/fm;

.field private a:Lcom/xiaomi/push/fp;

.field private final a:Ljava/lang/String;

.field private a:Ljava/text/SimpleDateFormat;

.field private b:Lcom/xiaomi/push/bi$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/push/t;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/xiaomi/push/bi;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/fm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/bi;->a:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/fm;

    iput-object v0, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/bi$a;

    iput-object v0, p0, Lcom/xiaomi/push/bi;->b:Lcom/xiaomi/push/bi$a;

    iput-object v0, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/fp;

    const-string v0, "[Slim] "

    iput-object v0, p0, Lcom/xiaomi/push/bi;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/fm;

    invoke-direct {p0}, Lcom/xiaomi/push/bi;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/bi;)Lcom/xiaomi/push/fm;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/fm;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/bi;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/bi;->a:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/bi$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/bi$a;-><init>(Lcom/xiaomi/push/bi;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/bi$a;

    new-instance v0, Lcom/xiaomi/push/bi$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/bi$a;-><init>(Lcom/xiaomi/push/bi;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/bi;->b:Lcom/xiaomi/push/bi$a;

    iget-object v0, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/fm;

    iget-object v1, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/bi$a;

    iget-object v2, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/bi$a;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/fm;->a(Lcom/xiaomi/push/fr;Lcom/xiaomi/push/fz;)V

    iget-object v0, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/fm;

    iget-object v1, p0, Lcom/xiaomi/push/bi;->b:Lcom/xiaomi/push/bi$a;

    iget-object v2, p0, Lcom/xiaomi/push/bi;->b:Lcom/xiaomi/push/bi$a;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/fm;->b(Lcom/xiaomi/push/fr;Lcom/xiaomi/push/fz;)V

    new-instance v0, Lcom/xiaomi/push/bj;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/bj;-><init>(Lcom/xiaomi/push/bi;)V

    iput-object v0, p0, Lcom/xiaomi/push/bi;->a:Lcom/xiaomi/push/fp;

    return-void
.end method
