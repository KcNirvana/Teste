.class Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;
.super Ljava/lang/Object;
.source "AgendaSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$400(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$400(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_3
    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$500(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$500(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_4
    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/calendar/api/CalendarAPI;->viewAccountSettingActivity(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b09002e
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
