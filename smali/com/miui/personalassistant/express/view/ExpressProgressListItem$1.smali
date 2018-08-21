.class Lcom/miui/personalassistant/express/view/ExpressProgressListItem$1;
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

.field final synthetic val$phoneStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/view/ExpressProgressListItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$1;->this$0:Lcom/miui/personalassistant/express/view/ExpressProgressListItem;

    iput-object p2, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$1;->val$phoneStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$1;->this$0:Lcom/miui/personalassistant/express/view/ExpressProgressListItem;

    invoke-static {v0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->access$000(Lcom/miui/personalassistant/express/view/ExpressProgressListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$1;->val$phoneStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->showCallPhoneDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
