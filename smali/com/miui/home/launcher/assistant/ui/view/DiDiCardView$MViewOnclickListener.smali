.class Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;
.super Ljava/lang/Object;
.source "DiDiCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MViewOnclickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;-><init>(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x1b0b00d5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->showDiDi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$1100(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$1200(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v8}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$1300(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x1b0b00d6

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->showDiDi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$1400(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$1500(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$1600(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v8}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$1700(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x1b0b00d4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->showDiDi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x1b0b00da

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->showDiDi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b090140 -> :sswitch_0
        0x1b090142 -> :sswitch_1
        0x1b090149 -> :sswitch_2
        0x1b090150 -> :sswitch_3
    .end sparse-switch
.end method
