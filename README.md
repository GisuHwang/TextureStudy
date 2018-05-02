# TextureStudy
`Texture`로 바뀐 AsyncDisplayKit 라이브러리를 학습하기위한 repository

원문으로 제공되는 공식문서를 보며 나름 해석(?) 공부하며 정리를 합니다.

 * [Texture](http://texturegroup.org)
 	
 * [Texture github](https://github.com/texturegroup/texture)


## Textrue?

### 정의
 
* Textrue를 올바르게 사용하면 기본적으로 모든 측정, 레이아웃 및 렌더링을 비동기 적으로 수행 할 수 있고, 앱은 Main Thread에서 수행되는 작업량을 대략적으로 감소시킬 수 있음.
즉, 스레드로부터 안전하게 만들어 앱을 최적화하기 위해 개발 된 iOS 프레임 워크 
* 최소한의 코드로 복잡하고 정교한 인터페이스를 구현할 수있는 인상적인 개발자 편의를 제공함.


### 장점

* UI에 대한 코드리뷰 및 생산성

	*	Xib으로 작성된 코드를 리뷰함에 있어 어려움이 있었다.
	*  코드로 Constraint를 잡음으로써 가독성에 장점이 있지만, 이 두방법 모두 UI가 복잡해지면 복잡할수록, 가독성이 떨어지고 퍼포먼스 저하로 이어질수 있다고 한다.
	*  `Texture`	의 경우 CSSFlexBox를 이용한 Layout설계를 바탕으로 가독성이 뛰어나고 디자이너의 요구사항을 대처하기 쉽다.

	* flexBox에 대해 확인 연습할수 있는 링크 (Texture의 layoutSpec은 YogaLayout기반을 작성)
		* [Flexbox Froggy](http://huytnguyen.me/froggy-asdk-layout/)
		* [YogaLayout](https://yogalayout.com/)
	
	
#### Nodes
![이미지](https://github.com/GisuHwang/TextureStudy/blob/master/imgSource/TextureNodes_table.png?raw=true)


#### Nodes Container
![이미지](https://github.com/GisuHwang/TextureStudy/blob/master/imgSource/TextureNode%20Containers_table.png?raw=true)

#### Node 계층구조

* ASDisplayNode
	* ASTableNode
	* ASCollectionNode
		* ASPagerNode
	* ASCellNode
		* ASTextCellNode
	* ASCrollNode
	* ASEDitableTextNode
	* ASControllNode
		* ASButtonNode
		* ASTextNode
		* ASMapNode
		* ASImageNode
			* ASMutiplexImageNode
			* ASNetworkImageNode
				* ASVideoNode
	* ASVideoPlayerNode		
	
#### 기본 개념

1. 레이아웃 규칙
2. 레이아웃 요소

* 레이아웃 규칙/ 레이아웃