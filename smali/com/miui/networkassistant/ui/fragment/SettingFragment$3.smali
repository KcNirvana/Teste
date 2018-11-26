.class final Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    return-void
.end method
