.class final Lcom/miui/video/base/widget/dialog/UIReportItemView$setContentView$1;
.super Ljava/lang/Object;
.source "UIReportItemView.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/widget/dialog/UIReportItemView;->setContentView(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $baseUIEntity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

.field final synthetic $index:I


# direct methods
.method constructor <init>(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView$setContentView$1;->$baseUIEntity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    iput p2, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView$setContentView$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView$setContentView$1;->$baseUIEntity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getKvList()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView$setContentView$1;->$index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;

    iput-boolean p2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;->checked:Z

    return-void
.end method
