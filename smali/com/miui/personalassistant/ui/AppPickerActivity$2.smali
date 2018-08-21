.class Lcom/miui/personalassistant/ui/AppPickerActivity$2;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/AppPickerActivity;->onResult(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/personalassistant/util/Callback",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/AppPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$2;->this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$2;->this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$2;->this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;

    invoke-static {v2, p1}, Lcom/miui/personalassistant/ui/AppPickerActivity;->access$000(Lcom/miui/personalassistant/ui/AppPickerActivity;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/ui/AppPickerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$2;->this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/AppPickerActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/AppPickerActivity$2;->onResult(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method
