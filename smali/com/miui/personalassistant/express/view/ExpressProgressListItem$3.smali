.class Lcom/miui/personalassistant/express/view/ExpressProgressListItem$3;
.super Ljava/lang/Object;
.source "ExpressProgressListItem.java"

# interfaces
.implements Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->setProgressText(Lcom/miui/personalassistant/express/bean/DetailEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/view/ExpressProgressListItem;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/view/ExpressProgressListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$3;->this$0:Lcom/miui/personalassistant/express/view/ExpressProgressListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$3;->this$0:Lcom/miui/personalassistant/express/view/ExpressProgressListItem;

    invoke-static {v0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->access$000(Lcom/miui/personalassistant/express/view/ExpressProgressListItem;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/personalassistant/express/bean/DetailEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/personalassistant/express/bean/DetailEntry;->getOrderCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/express/util/CainiaoUtil;->gotoScheduleDeliveryPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
