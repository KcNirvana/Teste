.class Lcom/miui/personalassistant/ui/LocationSettingActivity$2;
.super Ljava/lang/Object;
.source "LocationSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/LocationSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/LocationSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity$2;->this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity$2;->this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/util/Permission;->enableLocation(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity$2;->this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;

    const v1, 0x1b0b02c2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity$2;->this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/LocationSettingActivity;->setResult(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity$2;->this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/LocationSettingActivity;->finish()V

    return-void
.end method
