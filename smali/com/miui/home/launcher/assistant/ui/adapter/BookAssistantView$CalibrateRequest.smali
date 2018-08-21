.class Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;
.super Ljava/lang/Object;
.source "BookAssistantView.java"

# interfaces
.implements Lcom/miui/calendar/api/CalendarAPI$RequestFun;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalibrateRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;)V

    return-void
.end method


# virtual methods
.method public doRequest(Ljava/lang/String;Lcom/miui/calendar/api/CalendarAPI$ResponseListener;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest$1;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$CalibrateRequest;Ljava/lang/String;Lcom/miui/calendar/api/CalendarAPI$ResponseListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method
