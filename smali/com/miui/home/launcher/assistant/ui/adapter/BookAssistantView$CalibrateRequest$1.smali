.class Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest$1;
.super Ljava/lang/Object;
.source "BookAssistantView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;->doRequest(Ljava/lang/String;Lcom/miui/calendar/api/CalendarAPI$ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;

.field final synthetic val$responseListener:Lcom/miui/calendar/api/CalendarAPI$ResponseListener;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;Ljava/lang/String;Lcom/miui/calendar/api/CalendarAPI$ResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest$1;->val$s:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest$1;->val$responseListener:Lcom/miui/calendar/api/CalendarAPI$ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/miui/home/launcher/assistant/request/BookAssistantRequest;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->access$400(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/home/launcher/assistant/request/BookAssistantRequest;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest$1;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/request/BookAssistantRequest;->reqCalendarServer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest$1;->val$responseListener:Lcom/miui/calendar/api/CalendarAPI$ResponseListener;

    invoke-interface {v2, v1}, Lcom/miui/calendar/api/CalendarAPI$ResponseListener;->onResponse(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
