.class public Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick;
.super Ljava/lang/Object;
.source "LaunchIconClick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;
    }
.end annotation


# static fields
.field private static mClickListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickListener(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick;->mClickListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick;->mClickListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick;->mClickListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;->clickListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setClickListener(Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick;->mClickListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
