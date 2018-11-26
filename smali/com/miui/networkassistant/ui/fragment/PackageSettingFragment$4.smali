.class final Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    const v1, 0x7f0702ab

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method
