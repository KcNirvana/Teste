.class Lorg/videolan/libvlc/VLCObject$1EventRunnable;
.super Ljava/lang/Object;
.source "VLCObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/VLCObject;->dispatchEventFromNative(IJJJJFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventRunnable"
.end annotation


# instance fields
.field private final event:Lorg/videolan/libvlc/VLCEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final listener:Lorg/videolan/libvlc/VLCEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/videolan/libvlc/VLCEvent$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/videolan/libvlc/VLCObject;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/VLCObject;Lorg/videolan/libvlc/VLCEvent$Listener;Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/videolan/libvlc/VLCEvent$Listener<",
            "TT;>;TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->this$0:Lorg/videolan/libvlc/VLCObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->listener:Lorg/videolan/libvlc/VLCEvent$Listener;

    iput-object p3, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->event:Lorg/videolan/libvlc/VLCEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->listener:Lorg/videolan/libvlc/VLCEvent$Listener;

    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->event:Lorg/videolan/libvlc/VLCEvent;

    invoke-interface {v0, v1}, Lorg/videolan/libvlc/VLCEvent$Listener;->onEvent(Lorg/videolan/libvlc/VLCEvent;)V

    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->event:Lorg/videolan/libvlc/VLCEvent;

    invoke-virtual {v0}, Lorg/videolan/libvlc/VLCEvent;->release()V

    return-void
.end method
