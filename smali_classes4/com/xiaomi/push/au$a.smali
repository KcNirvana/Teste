.class public Lcom/xiaomi/push/au$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/push/au;


# instance fields
.field public a:I

.field public a:Ljava/lang/Object;

.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/au;

    invoke-direct {v0}, Lcom/xiaomi/push/au;-><init>()V

    sput-object v0, Lcom/xiaomi/push/au$a;->a:Lcom/xiaomi/push/au;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/push/au$a;->a:I

    iput-object p2, p0, Lcom/xiaomi/push/au$a;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/push/au;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/au$a;->a:Lcom/xiaomi/push/au;

    return-object v0
.end method
