.class Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$1;
.super Ljava/lang/Object;
.source "PersonalAssistantPickerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->setupListView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-le v4, v3, :cond_1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;

    invoke-static {v3, v1}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->access$000(Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;Lcom/miui/personalassistant/ui/YellowPagePickerListItem;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;

    iget-object v3, v3, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mPreviousThumb:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;

    iget-object v3, v3, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v3, v2}, Lmiui/widget/AlphabetFastIndexer;->drawThumb(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$1;->this$0:Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;

    iput-object v2, v3, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mPreviousThumb:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
