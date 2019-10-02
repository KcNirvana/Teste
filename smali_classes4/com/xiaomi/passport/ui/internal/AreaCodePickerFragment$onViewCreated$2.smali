.class public final Lcom/xiaomi/passport/ui/internal/AreaCodePickerFragment$onViewCreated$2;
.super Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$OnScrollerDecorator;
.source "AreaCodePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/AreaCodePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/AreaCodePickerFragment$onViewCreated$2",
        "Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$OnScrollerDecorator;",
        "(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V",
        "itemToString",
        "",
        "item",
        "",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $mFastIndexer:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AreaCodePickerFragment$onViewCreated$2;->$mFastIndexer:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$OnScrollerDecorator;-><init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method protected itemToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    check-cast p1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;

    iget-object p1, p1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->countryName:Ljava/lang/String;

    const-string v0, "(item as PhoneNumUtil.Co\u2026PhoneNumData).countryName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.xiaomi.passport.ui.internal.PhoneNumUtil.CountryPhoneNumData"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
