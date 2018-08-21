.class Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;
.super Ljava/lang/Object;
.source "ExpressPhoneAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->showDeleteDialog(Lcom/miui/personalassistant/express/bean/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

.field final synthetic val$currentPhone:Lcom/miui/personalassistant/express/bean/Phone;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/bean/Phone;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    iput-object p2, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;->val$currentPhone:Lcom/miui/personalassistant/express/bean/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;-><init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;->val$currentPhone:Lcom/miui/personalassistant/express/bean/Phone;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
