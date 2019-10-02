.class public final synthetic Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

.field private final synthetic f$1:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/video/common/feed/entity/TitleEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;ILcom/miui/video/common/feed/entity/TitleEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;->f$0:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;->f$1:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;

    iput p3, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;->f$2:I

    iput-object p4, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;->f$3:Lcom/miui/video/common/feed/entity/TitleEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;->f$0:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;->f$1:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;

    iget v2, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;->f$2:I

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/condition/-$$Lambda$UIHorizontalTitleRVAdapter$1kCszXF-Zkt173IYqiD0XQETiEs;->f$3:Lcom/miui/video/common/feed/entity/TitleEntity;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->lambda$onBindViewHolder$7(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$FilterViewHolder;ILcom/miui/video/common/feed/entity/TitleEntity;Landroid/view/View;)V

    return-void
.end method
