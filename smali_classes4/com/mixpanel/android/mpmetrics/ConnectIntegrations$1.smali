.class Lcom/mixpanel/android/mpmetrics/ConnectIntegrations$1;
.super Ljava/lang/Object;
.source "ConnectIntegrations.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/ConnectIntegrations;->setAirshipPeopleProp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/ConnectIntegrations;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/ConnectIntegrations;)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/ConnectIntegrations$1;->this$0:Lcom/mixpanel/android/mpmetrics/ConnectIntegrations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ConnectIntegrations$1;->this$0:Lcom/mixpanel/android/mpmetrics/ConnectIntegrations;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/ConnectIntegrations;->access$000(Lcom/mixpanel/android/mpmetrics/ConnectIntegrations;)V

    return-void
.end method
