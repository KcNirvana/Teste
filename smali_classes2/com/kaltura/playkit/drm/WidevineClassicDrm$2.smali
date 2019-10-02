.class Lcom/kaltura/playkit/drm/WidevineClassicDrm$2;
.super Ljava/lang/Object;
.source "WidevineClassicDrm.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/drm/WidevineClassicDrm;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/drm/WidevineClassicDrm;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/drm/WidevineClassicDrm;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$2;->this$0:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$2;->this$0:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    invoke-static {p1, p2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->access$100(Lcom/kaltura/playkit/drm/WidevineClassicDrm;Landroid/drm/DrmEvent;)V

    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$2;->this$0:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    invoke-static {p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->access$200(Lcom/kaltura/playkit/drm/WidevineClassicDrm;)Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$2;->this$0:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    invoke-static {p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->access$200(Lcom/kaltura/playkit/drm/WidevineClassicDrm;)Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;->onEvent(Landroid/drm/DrmEvent;)V

    :cond_0
    return-void
.end method
