.class public Lcom/xiaomi/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/xiaomi/a/a/m;

.field public static final b:Lcom/xiaomi/a/a/m;

.field public static final c:I

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/a/a/m;

    const-string v1, "1.8.1"

    invoke-direct {v0, v1}, Lcom/xiaomi/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/a/a/a;->a:Lcom/xiaomi/a/a/m;

    new-instance v0, Lcom/xiaomi/a/a/m;

    const-string v1, "1.3.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/a/a/a;->b:Lcom/xiaomi/a/a/m;

    sget v0, Lcom/xiaomi/a/a/a/n;->f:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/xiaomi/a/a/a;->c:I

    sget v0, Lcom/xiaomi/a/a/a/n;->e:I

    sput v0, Lcom/xiaomi/a/a/a;->d:I

    return-void
.end method
