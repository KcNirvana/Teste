.class Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$3;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->addTab(ILjava/lang/CharSequence;ILcom/miui/video/base/common/entity/ColorEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

.field final synthetic val$tabView:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$3;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$3;->val$tabView:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$3;->val$tabView:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$3;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
