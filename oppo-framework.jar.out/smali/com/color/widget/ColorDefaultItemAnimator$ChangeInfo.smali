.class Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;
.super Ljava/lang/Object;
.source "ColorDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field public oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "oldHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 71
    iput-object p2, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 72
    return-void
.end method

.method private constructor <init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "oldHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;-><init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;)V

    .line 77
    iput p3, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->fromX:I

    .line 78
    iput p4, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->fromY:I

    .line 79
    iput p5, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->toX:I

    .line 80
    iput p6, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->toY:I

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIIILcom/color/widget/ColorDefaultItemAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p2, "x1"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/color/widget/ColorDefaultItemAnimator$1;

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;-><init>(Lcom/color/widget/ColorRecyclerView$ViewHolder;Lcom/color/widget/ColorRecyclerView$ViewHolder;IIII)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/color/widget/ColorRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->fromX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->fromY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->toX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/color/widget/ColorDefaultItemAnimator$ChangeInfo;->toY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
