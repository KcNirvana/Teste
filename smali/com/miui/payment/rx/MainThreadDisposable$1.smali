.class Lcom/miui/payment/rx/MainThreadDisposable$1;
.super Ljava/lang/Object;
.source "MainThreadDisposable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/rx/MainThreadDisposable;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/rx/MainThreadDisposable;


# direct methods
.method constructor <init>(Lcom/miui/payment/rx/MainThreadDisposable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/rx/MainThreadDisposable$1;->this$0:Lcom/miui/payment/rx/MainThreadDisposable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/rx/MainThreadDisposable$1;->this$0:Lcom/miui/payment/rx/MainThreadDisposable;

    invoke-virtual {v0}, Lcom/miui/payment/rx/MainThreadDisposable;->onDispose()V

    return-void
.end method
