.class public interface abstract Lcom/miui/video/common/feed/recyclerview/IUIFactory;
.super Ljava/lang/Object;
.source "IUIFactory.java"

# interfaces
.implements Lcom/miui/video/common/feed/IUIType;


# static fields
.field public static final LAYOUT_TYPE_OFFSET_MULTIPIER:I = 0x2710


# virtual methods
.method public abstract getLayoutTypeOffset()I
.end method

.method public abstract getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.end method

.method public abstract getUIView(Landroid/content/Context;IILandroid/view/ViewGroup;)Lcom/miui/video/framework/base/ui/UIBase;
.end method

.method public abstract getViewTypeCount()I
.end method

.method public abstract setLayoutTypeOffset(I)V
.end method
