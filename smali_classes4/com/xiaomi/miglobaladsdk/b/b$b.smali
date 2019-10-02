.class Lcom/xiaomi/miglobaladsdk/b/b$b;
.super Ljava/lang/Object;
.source "NativeAdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/miglobaladsdk/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/b/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/b/b$b;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/b/b$b;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/b/b$b$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/b/b$b$1;-><init>(Lcom/xiaomi/miglobaladsdk/b/b$b;)V

    invoke-static {v0}, Lcom/xiaomi/utils/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method
