.class public Landroid/inputmethodservice/Keyboard$Row;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field private parent:Landroid/inputmethodservice/Keyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 191
    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    .line 192
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 194
    .local v0, "a":Landroid/content/res/TypedArray;
    # getter for: Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->access$000(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    # getter for: Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->access$100(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 197
    # getter for: Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->access$200(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    # getter for: Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->access$300(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    invoke-static {v0, v5, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 200
    const/4 v1, 0x2

    # getter for: Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->access$000(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    # getter for: Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->access$400(Landroid/inputmethodservice/Keyboard;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 203
    const/4 v1, 0x3

    # getter for: Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->access$200(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    # getter for: Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->access$500(Landroid/inputmethodservice/Keyboard;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard_Row:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    .line 210
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/Keyboard;)V
    .locals 1
    .param p1, "parent"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 187
    iput-object p1, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    .line 188
    return-void
.end method

.method static synthetic access$600(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard$Row;

    .prologue
    .line 163
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method