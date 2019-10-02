.class final Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$3;
.super Ljava/lang/Object;
.source "PhoneViewWrapper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/widget/AutoCompleteTextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$3;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$3;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;->getPhone()Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$3;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;->getPhone()Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
