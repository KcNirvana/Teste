.class Lcom/miui/voicesdk/ScreencapHelper$5;
.super Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;
.source "ScreencapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voicesdk/ScreencapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/voicesdk/ScreencapHelper;


# direct methods
.method constructor <init>(Lcom/miui/voicesdk/ScreencapHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/ScreencapHelper$5;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-direct {p0}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentReceived(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "MotionEvent"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "MotionEvent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voicesdk/ScreencapHelper$5;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v1, v0}, Lcom/miui/voicesdk/ScreencapHelper;->setTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
