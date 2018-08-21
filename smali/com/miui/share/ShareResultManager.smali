.class public Lcom/miui/share/ShareResultManager;
.super Ljava/lang/Object;
.source "ShareResultManager.java"


# static fields
.field private static mShareResultListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/share/OnShareResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/share/ShareResultManager;->mShareResultListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyShareResult(II)V
    .locals 1

    sget-object v0, Lcom/miui/share/ShareResultManager;->mShareResultListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/share/ShareResultManager;->mShareResultListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/share/ShareResultManager;->mShareResultListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/share/OnShareResultListener;

    invoke-interface {v0, p0, p1}, Lcom/miui/share/OnShareResultListener;->onShareResult(II)V

    :cond_0
    return-void
.end method

.method static setShareResultListener(Lcom/miui/share/OnShareResultListener;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/share/ShareResultManager;->mShareResultListenerRef:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
