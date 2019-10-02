.class public final synthetic Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$SearchFragment$L3YE_kugG52FPZUPtlYg19JQjPU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$SearchFragment$L3YE_kugG52FPZUPtlYg19JQjPU;->f$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    return-void
.end method


# virtual methods
.method public final onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$SearchFragment$L3YE_kugG52FPZUPtlYg19JQjPU;->f$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->lambda$initFindViews$81(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    move-result-object p1

    return-object p1
.end method
