.class final Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1$initView$1;
.super Ljava/lang/Object;
.source "PhoneViewWrapper.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->initView(Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0002\u0008\u0003 \u0004*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\n\u00a2\u0006\u0002\u0008\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/AdapterView;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "Landroid/view/View;",
        "<anonymous parameter 2>",
        "",
        "id",
        "",
        "onItemClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $view:Landroid/widget/AutoCompleteTextView;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1$initView$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1$initView$1;->$view:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1$initView$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;

    iget-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1$initView$1;->$view:Landroid/widget/AutoCompleteTextView;

    long-to-int p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->setItemToView(Landroid/widget/AutoCompleteTextView;I)V

    return-void
.end method
