.class public Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;
.super Landroid/os/Handler;
.source "SQLiteCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sqlcipher/database/SQLiteCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MainThreadNotificationHandler"
.end annotation


# instance fields
.field private final wrappedCursor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/sqlcipher/database/SQLiteCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteCursor;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;->wrappedCursor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;->wrappedCursor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/database/SQLiteCursor;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lnet/sqlcipher/database/SQLiteCursor;->access$700(Lnet/sqlcipher/database/SQLiteCursor;)V

    :cond_0
    return-void
.end method
