.class Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "LinearLayoutForListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;-><init>(Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->access$100(Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;)V

    return-void
.end method
