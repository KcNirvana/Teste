.class public final synthetic Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalCardListView$IFTix5BCf_4gbPIpR7gf_B_lMxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/video/common/feed/IUIRecyclerCreateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalCardListView$IFTix5BCf_4gbPIpR7gf_B_lMxc;->f$0:Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;

    return-void
.end method


# virtual methods
.method public final onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalCardListView$IFTix5BCf_4gbPIpR7gf_B_lMxc;->f$0:Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->lambda$initUI$5(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    move-result-object p1

    return-object p1
.end method
