.class public Lcom/xiaomi/push/dq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/push/dq;->a:Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/hi;->o:Lcom/xiaomi/push/hi;

    invoke-virtual {v0}, Lcom/xiaomi/push/hi;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/dq;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/hi;->p:Lcom/xiaomi/push/hi;

    invoke-virtual {v0}, Lcom/xiaomi/push/hi;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/dq;->b:Ljava/lang/String;

    return-void
.end method
